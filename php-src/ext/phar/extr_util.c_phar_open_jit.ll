; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_open_jit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_util.c_phar_open_jit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FAILURE = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"phar error: cannot seek to start of file \22%s\22 in phar \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @phar_open_jit(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8**, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load i8**, i8*** %7, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i8**, i8*** %7, align 8
  store i8* null, i8** %11, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = load i64, i64* @FAILURE, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load i8**, i8*** %7, align 8
  %16 = call i64 @phar_open_entry_fp(%struct.TYPE_8__* %14, i8** %15, i32 1)
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %35

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i32 @phar_seek_efp(%struct.TYPE_8__* %20, i32 0, i32 %21, i32 0, i32 1)
  %23 = icmp eq i32 -1, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i8**, i8*** %7, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spprintf(i8** %25, i32 4096, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %4, align 8
  br label %35

35:                                               ; preds = %33, %24, %18
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %36
}

declare dso_local i64 @phar_open_entry_fp(%struct.TYPE_8__*, i8**, i32) #1

declare dso_local i32 @phar_seek_efp(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
