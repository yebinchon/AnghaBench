; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_sub.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64* }

@MP_MEMORY = common dso_local global i32 0, align 4
@MP_ZPOS = common dso_local global i64 0, align 8
@MP_NEG = common dso_local global i64 0, align 8
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_sub(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br label %25

25:                                               ; preds = %22, %19, %3
  %26 = phi i1 [ false, %19 ], [ false, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = call i32 @MP_USED(%struct.TYPE_12__* %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = call i32 @MP_USED(%struct.TYPE_12__* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @MAX(i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = call i64 @MP_SIGN(%struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = call i64 @MP_SIGN(%struct.TYPE_12__* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %25
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @s_pad(%struct.TYPE_12__* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @MP_MEMORY, align 4
  store i32 %47, i32* %4, align 4
  br label %144

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call i32 @MP_DIGITS(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = call i32 @MP_DIGITS(%struct.TYPE_12__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = call i32 @MP_DIGITS(%struct.TYPE_12__* %53)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @s_uadd(i32 %50, i32 %52, i32 %54, i32 %55, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i64, i64* %11, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %48
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  %65 = call i32 @s_pad(%struct.TYPE_12__* %62, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @MP_MEMORY, align 4
  store i32 %68, i32* %4, align 4
  br label %144

69:                                               ; preds = %61
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %69, %48
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %142

88:                                               ; preds = %25
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @s_pad(%struct.TYPE_12__* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @MP_MEMORY, align 4
  store i32 %94, i32* %4, align 4
  br label %144

95:                                               ; preds = %88
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = call i32 @s_ucmp(%struct.TYPE_12__* %96, %struct.TYPE_12__* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %13, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %14, align 8
  %104 = load i64, i64* @MP_ZPOS, align 8
  store i64 %104, i64* %15, align 8
  br label %109

105:                                              ; preds = %95
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %13, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %107, %struct.TYPE_12__** %14, align 8
  %108 = load i64, i64* @MP_NEG, align 8
  store i64 %108, i64* %15, align 8
  br label %109

109:                                              ; preds = %105, %101
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = call i64 @MP_SIGN(%struct.TYPE_12__* %110)
  %112 = load i64, i64* @MP_NEG, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i64, i64* %15, align 8
  %119 = sub nsw i64 1, %118
  store i64 %119, i64* %15, align 8
  br label %120

120:                                              ; preds = %117, %114, %109
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %122 = call i32 @MP_DIGITS(%struct.TYPE_12__* %121)
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %124 = call i32 @MP_DIGITS(%struct.TYPE_12__* %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %126 = call i32 @MP_DIGITS(%struct.TYPE_12__* %125)
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %128 = call i32 @MP_USED(%struct.TYPE_12__* %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %130 = call i32 @MP_USED(%struct.TYPE_12__* %129)
  %131 = call i32 @s_usub(i32 %122, i32 %124, i32 %126, i32 %128, i32 %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %138 = call i32 @CLAMP(%struct.TYPE_12__* %137)
  %139 = load i64, i64* %15, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %120, %79
  %143 = load i32, i32* @MP_OK, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %93, %67, %46
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_USED(%struct.TYPE_12__*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_12__*) #1

declare dso_local i32 @s_pad(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @s_uadd(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MP_DIGITS(%struct.TYPE_12__*) #1

declare dso_local i32 @s_ucmp(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @s_usub(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLAMP(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
