; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_globulize.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ftp/extr_cmds.c_globulize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@doglob = common dso_local global i32 0, align 4
@globerr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globulize(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  %5 = load i32, i32* @doglob, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %49

8:                                                ; preds = %1
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i8** @glob(i8* %10)
  store i8** %11, i8*** %4, align 8
  %12 = load i8*, i8** @globerr, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load i8**, i8*** %3, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** @globerr, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = load i8**, i8*** %4, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load i8**, i8*** %4, align 8
  %25 = call i32 @blkfree(i8** %24)
  %26 = load i8**, i8*** %4, align 8
  %27 = bitcast i8** %26 to i8*
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %23, %14
  store i32 0, i32* %2, align 4
  br label %49

30:                                               ; preds = %8
  %31 = load i8**, i8*** %4, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %4, align 8
  %36 = load i8*, i8** %34, align 8
  %37 = load i8**, i8*** %3, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i8**, i8*** %4, align 8
  %43 = call i32 @blkfree(i8** %42)
  %44 = load i8**, i8*** %4, align 8
  %45 = bitcast i8** %44 to i8*
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %41, %33
  br label %48

48:                                               ; preds = %47, %30
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %29, %7
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i8** @glob(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @blkfree(i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
