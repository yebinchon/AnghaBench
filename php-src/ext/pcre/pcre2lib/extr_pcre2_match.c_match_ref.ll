; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_match.c_match_ref.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_match.c_match_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64, i32 }

@Foffset_top = common dso_local global i64 0, align 8
@Fovector = common dso_local global i64* null, align 8
@PCRE2_UNSET = common dso_local global i64 0, align 8
@PCRE2_MATCH_UNSET_BACKREF = common dso_local global i32 0, align 4
@Feptr = common dso_local global i64 0, align 8
@PCRE2_UTF = common dso_local global i32 0, align 4
@ucd_caseless_sets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, %struct.TYPE_6__*, i64*)* @match_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_ref(i64 %0, i64 %1, i32* %2, %struct.TYPE_6__* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @Foffset_top, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %5
  %22 = load i64*, i64** @Fovector, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCRE2_UNSET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %21, %5
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PCRE2_MATCH_UNSET_BACKREF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64*, i64** %11, align 8
  store i64 0, i64* %36, align 8
  store i32 0, i32* %6, align 4
  br label %154

37:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %154

38:                                               ; preds = %21
  %39 = load i64, i64* @Feptr, align 8
  store i64 %39, i64* %15, align 8
  store i64 %39, i64* %14, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** @Fovector, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %42, %46
  store i64 %47, i64* %12, align 8
  %48 = load i64*, i64** @Fovector, align 8
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %49, 1
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** @Fovector, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %52, %56
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %99

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %95, %60
  %62 = load i64, i64* %13, align 8
  %63 = icmp ugt i64 %62, 0
  br i1 %63, label %64, label %98

64:                                               ; preds = %61
  %65 = load i64, i64* %14, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 1, i32* %6, align 4
  br label %154

71:                                               ; preds = %64
  %72 = load i64, i64* %14, align 8
  %73 = call i64 @UCHAR21TEST(i64 %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @UCHAR21TEST(i64 %74)
  store i64 %75, i64* %17, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i64 @TABLE_GET(i64 %76, i32 %79, i64 %80)
  %82 = load i64, i64* %16, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %16, align 8
  %87 = call i64 @TABLE_GET(i64 %82, i32 %85, i64 %86)
  %88 = icmp ne i64 %81, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %71
  store i32 -1, i32* %6, align 4
  br label %154

90:                                               ; preds = %71
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %14, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %14, align 8
  br label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %13, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %13, align 8
  br label %61

98:                                               ; preds = %61
  br label %149

99:                                               ; preds = %38
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %123, %104
  %106 = load i64, i64* %13, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %105
  %109 = load i64, i64* %14, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp uge i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  store i32 1, i32* %6, align 4
  br label %154

115:                                              ; preds = %108
  %116 = load i64, i64* %12, align 8
  %117 = call i64 @UCHAR21INCTEST(i64 %116)
  %118 = load i64, i64* %14, align 8
  %119 = call i64 @UCHAR21INCTEST(i64 %118)
  %120 = icmp ne i64 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 -1, i32* %6, align 4
  br label %154

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, -1
  store i64 %125, i64* %13, align 8
  br label %105

126:                                              ; preds = %105
  br label %148

127:                                              ; preds = %99
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = sub i64 %130, %131
  %133 = load i64, i64* %13, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 1, i32* %6, align 4
  br label %154

136:                                              ; preds = %127
  %137 = load i64, i64* %12, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i64, i64* %13, align 8
  %140 = call i32 @CU2BYTES(i64 %139)
  %141 = call i64 @memcmp(i64 %137, i64 %138, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  store i32 -1, i32* %6, align 4
  br label %154

144:                                              ; preds = %136
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = add i64 %146, %145
  store i64 %147, i64* %14, align 8
  br label %148

148:                                              ; preds = %144, %126
  br label %149

149:                                              ; preds = %148, %98
  %150 = load i64, i64* %14, align 8
  %151 = load i64, i64* %15, align 8
  %152 = sub i64 %150, %151
  %153 = load i64*, i64** %11, align 8
  store i64 %152, i64* %153, align 8
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %149, %143, %135, %121, %114, %89, %70, %37, %35
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i64 @UCHAR21TEST(i64) #1

declare dso_local i64 @TABLE_GET(i64, i32, i64) #1

declare dso_local i64 @UCHAR21INCTEST(i64) #1

declare dso_local i64 @memcmp(i64, i64, i32) #1

declare dso_local i32 @CU2BYTES(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
