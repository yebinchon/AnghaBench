; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_constfolding.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_constfolding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*, %struct.TYPE_7__*)* @constfolding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constfolding(i32 %0, %struct.TYPE_7__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = call i32 @isnumeral(%struct.TYPE_7__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = call i32 @isnumeral(%struct.TYPE_7__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %77

19:                                               ; preds = %14
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %65 [
    i32 135, label %29
    i32 129, label %33
    i32 131, label %37
    i32 134, label %41
    i32 132, label %49
    i32 130, label %57
    i32 128, label %61
    i32 133, label %64
  ]

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @luai_numadd(i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  br label %67

33:                                               ; preds = %19
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @luai_numsub(i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  br label %67

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @luai_nummul(i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %67

41:                                               ; preds = %19
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %77

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @luai_numdiv(i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  br label %67

49:                                               ; preds = %19
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %77

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @luai_nummod(i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %67

57:                                               ; preds = %19
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @luai_numpow(i32 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  br label %67

61:                                               ; preds = %19
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @luai_numunm(i32 %62)
  store i32 %63, i32* %10, align 4
  br label %67

64:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %77

65:                                               ; preds = %19
  %66 = call i32 @lua_assert(i32 0)
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %61, %57, %53, %45, %37, %33, %29
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @luai_numisnan(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %77

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %72, %71, %64, %52, %44, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @isnumeral(%struct.TYPE_7__*) #1

declare dso_local i32 @luai_numadd(i32, i32) #1

declare dso_local i32 @luai_numsub(i32, i32) #1

declare dso_local i32 @luai_nummul(i32, i32) #1

declare dso_local i32 @luai_numdiv(i32, i32) #1

declare dso_local i32 @luai_nummod(i32, i32) #1

declare dso_local i32 @luai_numpow(i32, i32) #1

declare dso_local i32 @luai_numunm(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @luai_numisnan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
