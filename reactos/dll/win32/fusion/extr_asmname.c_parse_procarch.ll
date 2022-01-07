; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmname.c_parse_procarch.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/fusion/extr_asmname.c_parse_procarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@parse_procarch.msilW = internal constant [5 x i8] c"msil\00", align 1
@parse_procarch.x86W = internal constant [4 x i8] c"x86\00", align 1
@parse_procarch.ia64W = internal constant [5 x i8] c"ia64\00", align 1
@parse_procarch.amd64W = internal constant [6 x i8] c"amd64\00", align 1
@peMSIL = common dso_local global i32 0, align 4
@peI386 = common dso_local global i32 0, align 4
@peIA64 = common dso_local global i32 0, align 4
@peAMD64 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unrecognized architecture: %s\0A\00", align 1
@FUSION_E_INVALID_NAME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @parse_procarch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_procarch(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @lstrcmpiW(i32 %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_procarch.msilW, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @peMSIL, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @lstrcmpiW(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @parse_procarch.x86W, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @peI386, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %44

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @lstrcmpiW(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @parse_procarch.ia64W, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @peIA64, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %43

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @lstrcmpiW(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @parse_procarch.amd64W, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @peAMD64, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @wine_dbgstr_w(i32 %38)
  %40 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @FUSION_E_INVALID_NAME, align 4
  store i32 %41, i32* %3, align 4
  br label %47

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43, %17
  br label %45

45:                                               ; preds = %44, %9
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %37
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @lstrcmpiW(i32, i8*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
