; ModuleID = '/home/carl/AnghaBench/pifs/src/extr_πfs.c_main.c'
source_filename = "/home/carl/AnghaBench/pifs/src/extr_\CF\80fs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.fuse_args = type { i32, i32 }

@options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@pifs_opts = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"%s: Metadata directory must be specified with -o mdd=<directory>\0A\00", align 1
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: Cannot access metadata directory '%s': %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@pifs_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_args, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i64 @FUSE_ARGS_INIT(i32 %8, i8** %9)
  %11 = bitcast %struct.fuse_args* %7 to i64*
  store i64 %10, i64* %11, align 4
  %12 = call i32 @memset(%struct.TYPE_4__* @options, i32 0, i32 4)
  %13 = load i32, i32* @pifs_opts, align 4
  %14 = call i32 @fuse_opt_parse(%struct.fuse_args* %7, %struct.TYPE_4__* @options, i32 %13, i32* null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %3, align 4
  br label %52

26:                                               ; preds = %17
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %28 = load i32, i32* @R_OK, align 4
  %29 = load i32, i32* @W_OK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @X_OK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @access(i8* %27, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @options, i32 0, i32 0), align 8
  %41 = load i32, i32* @errno, align 4
  %42 = call i8* @strerror(i32 %41)
  %43 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40, i8* %42)
  store i32 -1, i32* %3, align 4
  br label %52

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @fuse_main(i32 %46, i32 %48, i32* @pifs_ops, i32* null)
  store i32 %49, i32* %6, align 4
  %50 = call i32 @fuse_opt_free_args(%struct.fuse_args* %7)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %35, %20, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @FUSE_ARGS_INIT(i32, i8**) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @fuse_opt_parse(%struct.fuse_args*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fuse_main(i32, i32, i32*, i32*) #1

declare dso_local i32 @fuse_opt_free_args(%struct.fuse_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
