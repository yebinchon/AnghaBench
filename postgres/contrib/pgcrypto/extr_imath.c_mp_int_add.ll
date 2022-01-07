; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_add.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64* }

@MP_MEMORY = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_add(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br label %24

24:                                               ; preds = %21, %18, %3
  %25 = phi i1 [ false, %18 ], [ false, %3 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = call i32 @MP_USED(%struct.TYPE_13__* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = call i32 @MP_USED(%struct.TYPE_13__* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @MAX(i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = call i64 @MP_SIGN(%struct.TYPE_13__* %35)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = call i64 @MP_SIGN(%struct.TYPE_13__* %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %24
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @s_pad(%struct.TYPE_13__* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @MP_MEMORY, align 4
  store i32 %46, i32* %4, align 4
  br label %141

47:                                               ; preds = %40
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i32 @MP_DIGITS(%struct.TYPE_13__* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = call i32 @MP_DIGITS(%struct.TYPE_13__* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = call i32 @MP_DIGITS(%struct.TYPE_13__* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @s_uadd(i32 %49, i32 %51, i32 %53, i32 %54, i32 %55)
  store i64 %56, i64* %11, align 8
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i64, i64* %11, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %47
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i32 @s_pad(%struct.TYPE_13__* %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @MP_MEMORY, align 4
  store i32 %67, i32* %4, align 4
  br label %141

68:                                               ; preds = %60
  %69 = load i64, i64* %11, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 %69, i64* %75, align 8
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %68, %47
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %139

87:                                               ; preds = %24
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = call i32 @s_ucmp(%struct.TYPE_13__* %88, %struct.TYPE_13__* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %95 = call i32 @mp_int_zero(%struct.TYPE_13__* %94)
  %96 = load i32, i32* @MP_OK, align 4
  store i32 %96, i32* %4, align 4
  br label %141

97:                                               ; preds = %87
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %14, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %15, align 8
  br label %106

103:                                              ; preds = %97
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %14, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %15, align 8
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %110 = call i32 @MP_USED(%struct.TYPE_13__* %109)
  %111 = call i32 @s_pad(%struct.TYPE_13__* %108, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* @MP_MEMORY, align 4
  store i32 %114, i32* %4, align 4
  br label %141

115:                                              ; preds = %107
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %117 = call i32 @MP_DIGITS(%struct.TYPE_13__* %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %119 = call i32 @MP_DIGITS(%struct.TYPE_13__* %118)
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = call i32 @MP_DIGITS(%struct.TYPE_13__* %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %123 = call i32 @MP_USED(%struct.TYPE_13__* %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %125 = call i32 @MP_USED(%struct.TYPE_13__* %124)
  %126 = call i32 @s_usub(i32 %117, i32 %119, i32 %121, i32 %123, i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = call i32 @CLAMP(%struct.TYPE_13__* %132)
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %115, %78
  %140 = load i32, i32* @MP_OK, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %113, %93, %66, %45
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_USED(%struct.TYPE_13__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_13__*) #1

declare dso_local i32 @s_pad(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @s_uadd(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MP_DIGITS(%struct.TYPE_13__*) #1

declare dso_local i32 @s_ucmp(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_int_zero(%struct.TYPE_13__*) #1

declare dso_local i32 @s_usub(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLAMP(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
