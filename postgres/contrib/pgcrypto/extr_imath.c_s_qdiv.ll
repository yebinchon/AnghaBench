; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_qdiv.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_qdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, i32, i64 }

@MP_DIGIT_BIT = common dso_local global i64 0, align 8
@MP_ZPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @s_qdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_qdiv(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @MP_DIGIT_BIT, align 8
  %17 = sdiv i64 %15, %16
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @MP_DIGIT_BIT, align 8
  %20 = srem i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = call i32 @MP_USED(%struct.TYPE_7__* %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = call i32 @mp_int_zero(%struct.TYPE_7__* %31)
  br label %113

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = call i64* @MP_DIGITS(%struct.TYPE_7__* %34)
  store i64* %35, i64** %9, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64* %38, i64** %10, align 8
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %50, %33
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i64*, i64** %10, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %10, align 8
  %47 = load i64, i64* %45, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %50

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %40

53:                                               ; preds = %40
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sub nsw i64 %54, %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %53, %2
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  store i64 0, i64* %11, align 8
  %63 = load i64, i64* @MP_DIGIT_BIT, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %14, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %67 = call i32 @MP_USED(%struct.TYPE_7__* %66)
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %7, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = call i64* @MP_DIGITS(%struct.TYPE_7__* %69)
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = getelementptr inbounds i64, i64* %72, i64 -1
  store i64* %73, i64** %12, align 8
  br label %74

74:                                               ; preds = %90, %62
  %75 = load i64, i64* %7, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i64*, i64** %12, align 8
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %13, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = ashr i64 %81, %82
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %14, align 8
  %86 = shl i64 %84, %85
  %87 = or i64 %83, %86
  %88 = load i64*, i64** %12, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  store i64 %89, i64* %11, align 8
  br label %90

90:                                               ; preds = %77
  %91 = load i64, i64* %7, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %7, align 8
  %93 = load i64*, i64** %12, align 8
  %94 = getelementptr inbounds i64, i64* %93, i32 -1
  store i64* %94, i64** %12, align 8
  br label %74

95:                                               ; preds = %74
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = call i32 @CLAMP(%struct.TYPE_7__* %96)
  br label %98

98:                                               ; preds = %95, %59
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = call i32 @MP_USED(%struct.TYPE_7__* %99)
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @MP_ZPOS, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %30, %109, %102, %98
  ret void
}

declare dso_local i32 @MP_USED(%struct.TYPE_7__*) #1

declare dso_local i32 @mp_int_zero(%struct.TYPE_7__*) #1

declare dso_local i64* @MP_DIGITS(%struct.TYPE_7__*) #1

declare dso_local i32 @CLAMP(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
