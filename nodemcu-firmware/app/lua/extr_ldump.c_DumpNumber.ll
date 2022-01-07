; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_DumpNumber.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_ldump.c_DumpNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i64 }

@LUA_ERR_CC_NOTINTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, %struct.TYPE_8__*)* @DumpNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DumpNumber(float %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i8], align 1
  store float %0, float* %3, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load float, float* %3, align 4
  %16 = fptosi float %15 to i32
  %17 = sitofp i32 %16 to float
  %18 = load float, float* %3, align 4
  %19 = fcmp une float %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @LUA_ERR_CC_NOTINTEGER, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load float, float* %3, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i32 @DumpIntWithSize(float %25, i32 %29, %struct.TYPE_8__* %30)
  br label %77

32:                                               ; preds = %2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %74 [
    i32 4, label %37
    i32 8, label %46
  ]

37:                                               ; preds = %32
  %38 = load float, float* %3, align 4
  store float %38, float* %5, align 4
  %39 = bitcast float* %5 to i8*
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i32 @MaybeByteSwap(i8* %39, i32 4, %struct.TYPE_8__* %40)
  %42 = load float, float* %5, align 4
  %43 = fpext float %42 to double
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i32 @DumpVar(double %43, %struct.TYPE_8__* %44)
  br label %76

46:                                               ; preds = %32
  %47 = load float, float* %3, align 4
  %48 = fpext float %47 to double
  store double %48, double* %6, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  %55 = bitcast double* %6 to i8*
  store i8* %55, i8** %7, align 8
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @memcpy(i8* %56, i8* %57, i32 4)
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = call i32 @memcpy(i8* %59, i8* %61, i32 4)
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %66 = call i32 @memcpy(i8* %64, i8* %65, i32 4)
  br label %67

67:                                               ; preds = %54, %46
  %68 = bitcast double* %6 to i8*
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = call i32 @MaybeByteSwap(i8* %68, i32 8, %struct.TYPE_8__* %69)
  %71 = load double, double* %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = call i32 @DumpVar(double %71, %struct.TYPE_8__* %72)
  br label %76

74:                                               ; preds = %32
  %75 = call i32 @lua_assert(i32 0)
  br label %76

76:                                               ; preds = %74, %67, %37
  br label %77

77:                                               ; preds = %76, %24
  ret void
}

declare dso_local i32 @DumpIntWithSize(float, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @MaybeByteSwap(i8*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @DumpVar(double, %struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
