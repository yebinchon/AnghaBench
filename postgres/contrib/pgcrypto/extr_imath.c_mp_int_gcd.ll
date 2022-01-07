; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_gcd.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_mp_int_gcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8* }

@MP_UNDEF = common dso_local global i32 0, align 4
@MP_ZPOS = common dso_local global i8* null, align 8
@MP_MEMORY = common dso_local global i32 0, align 4
@MP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_int_gcd(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = icmp ne %struct.TYPE_20__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %17 = icmp ne %struct.TYPE_20__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = phi i1 [ false, %15 ], [ false, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = call i32 @CMPZ(%struct.TYPE_20__* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %28 = call i32 @CMPZ(%struct.TYPE_20__* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @MP_UNDEF, align 4
  store i32 %35, i32* %4, align 4
  br label %139

36:                                               ; preds = %31, %21
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = call i32 @mp_int_abs(%struct.TYPE_20__* %40, %struct.TYPE_20__* %41)
  store i32 %42, i32* %4, align 4
  br label %139

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = call i32 @mp_int_abs(%struct.TYPE_20__* %47, %struct.TYPE_20__* %48)
  store i32 %49, i32* %4, align 4
  br label %139

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = call i32 @DECLARE_TEMP(i32 3)
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %55 = call %struct.TYPE_20__* @TEMP(i32 0)
  %56 = call i32 @mp_int_copy(%struct.TYPE_20__* %54, %struct.TYPE_20__* %55)
  %57 = call i32 @REQUIRE(i32 %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %59 = call %struct.TYPE_20__* @TEMP(i32 1)
  %60 = call i32 @mp_int_copy(%struct.TYPE_20__* %58, %struct.TYPE_20__* %59)
  %61 = call i32 @REQUIRE(i32 %60)
  %62 = load i8*, i8** @MP_ZPOS, align 8
  %63 = call %struct.TYPE_20__* @TEMP(i32 0)
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** @MP_ZPOS, align 8
  %66 = call %struct.TYPE_20__* @TEMP(i32 1)
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  store i32 0, i32* %10, align 4
  %68 = call %struct.TYPE_20__* @TEMP(i32 0)
  %69 = call i32 @s_dp2k(%struct.TYPE_20__* %68)
  store i32 %69, i32* %11, align 4
  %70 = call %struct.TYPE_20__* @TEMP(i32 1)
  %71 = call i32 @s_dp2k(%struct.TYPE_20__* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @MIN(i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = call %struct.TYPE_20__* @TEMP(i32 0)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @s_qdiv(%struct.TYPE_20__* %75, i32 %76)
  %78 = call %struct.TYPE_20__* @TEMP(i32 1)
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @s_qdiv(%struct.TYPE_20__* %78, i32 %79)
  %81 = call %struct.TYPE_20__* @TEMP(i32 0)
  %82 = call i64 @mp_int_is_odd(%struct.TYPE_20__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %52
  %85 = call %struct.TYPE_20__* @TEMP(i32 1)
  %86 = call %struct.TYPE_20__* @TEMP(i32 2)
  %87 = call i32 @mp_int_neg(%struct.TYPE_20__* %85, %struct.TYPE_20__* %86)
  %88 = call i32 @REQUIRE(i32 %87)
  br label %94

89:                                               ; preds = %52
  %90 = call %struct.TYPE_20__* @TEMP(i32 0)
  %91 = call %struct.TYPE_20__* @TEMP(i32 2)
  %92 = call i32 @mp_int_copy(%struct.TYPE_20__* %90, %struct.TYPE_20__* %91)
  %93 = call i32 @REQUIRE(i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %123, %94
  %96 = call %struct.TYPE_20__* @TEMP(i32 2)
  %97 = call %struct.TYPE_20__* @TEMP(i32 2)
  %98 = call i32 @s_dp2k(%struct.TYPE_20__* %97)
  %99 = call i32 @s_qdiv(%struct.TYPE_20__* %96, i32 %98)
  %100 = call %struct.TYPE_20__* @TEMP(i32 2)
  %101 = call i32 @CMPZ(%struct.TYPE_20__* %100)
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = call %struct.TYPE_20__* @TEMP(i32 2)
  %105 = call %struct.TYPE_20__* @TEMP(i32 0)
  %106 = call i32 @mp_int_copy(%struct.TYPE_20__* %104, %struct.TYPE_20__* %105)
  %107 = call i32 @REQUIRE(i32 %106)
  br label %113

108:                                              ; preds = %95
  %109 = call %struct.TYPE_20__* @TEMP(i32 2)
  %110 = call %struct.TYPE_20__* @TEMP(i32 1)
  %111 = call i32 @mp_int_neg(%struct.TYPE_20__* %109, %struct.TYPE_20__* %110)
  %112 = call i32 @REQUIRE(i32 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = call %struct.TYPE_20__* @TEMP(i32 0)
  %115 = call %struct.TYPE_20__* @TEMP(i32 1)
  %116 = call %struct.TYPE_20__* @TEMP(i32 2)
  %117 = call i32 @mp_int_sub(%struct.TYPE_20__* %114, %struct.TYPE_20__* %115, %struct.TYPE_20__* %116)
  %118 = call i32 @REQUIRE(i32 %117)
  %119 = call %struct.TYPE_20__* @TEMP(i32 2)
  %120 = call i32 @CMPZ(%struct.TYPE_20__* %119)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %124

123:                                              ; preds = %113
  br label %95

124:                                              ; preds = %122
  %125 = call %struct.TYPE_20__* @TEMP(i32 0)
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %127 = call i32 @mp_int_abs(%struct.TYPE_20__* %125, %struct.TYPE_20__* %126)
  %128 = call i32 @REQUIRE(i32 %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @s_qmul(%struct.TYPE_20__* %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %124
  %134 = load i32, i32* @MP_MEMORY, align 4
  %135 = call i32 @REQUIRE(i32 %134)
  br label %136

136:                                              ; preds = %133, %124
  %137 = call i32 (...) @CLEANUP_TEMP()
  %138 = load i32, i32* @MP_OK, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %46, %39, %34
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @CMPZ(%struct.TYPE_20__*) #1

declare dso_local i32 @mp_int_abs(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @mp_int_copy(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_20__* @TEMP(i32) #1

declare dso_local i32 @s_dp2k(%struct.TYPE_20__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @s_qdiv(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @mp_int_is_odd(%struct.TYPE_20__*) #1

declare dso_local i32 @mp_int_neg(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @mp_int_sub(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @s_qmul(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
