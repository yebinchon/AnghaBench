; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_parse_zone.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_parse_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32*, i64 }

@TIMELIB_ZONETYPE_OFFSET = common dso_local global i8* null, align 8
@TIMELIB_ZONETYPE_ABBR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@TIMELIB_ZONETYPE_ID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timelib_parse_zone(i8** %0, i32* %1, %struct.TYPE_4__* %2, i32* %3, i32* %4, i32* (i8*, i32*, i32*)* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32* (i8*, i32*, i32*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* (i8*, i32*, i32*)* %5, i32* (i8*, i32*, i32*)** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %40, %6
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %7, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 40
  br label %38

38:                                               ; preds = %32, %26, %20
  %39 = phi i1 [ true, %26 ], [ true, %20 ], [ %37, %32 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %41, align 8
  br label %20

44:                                               ; preds = %38
  %45 = load i8**, i8*** %7, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 71
  br i1 %50, label %51, label %83

51:                                               ; preds = %44
  %52 = load i8**, i8*** %7, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 77
  br i1 %57, label %58, label %83

58:                                               ; preds = %51
  %59 = load i8**, i8*** %7, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 84
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load i8**, i8*** %7, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 43
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i8**, i8*** %7, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 45
  br i1 %78, label %79, label %83

79:                                               ; preds = %72, %65
  %80 = load i8**, i8*** %7, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 3
  store i8* %82, i8** %80, align 8
  br label %83

83:                                               ; preds = %79, %72, %58, %51, %44
  %84 = load i8**, i8*** %7, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 43
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load i8**, i8*** %7, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %90, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load i8*, i8** @TIMELIB_ZONETYPE_OFFSET, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i32*, i32** %10, align 8
  store i32 0, i32* %98, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load i8**, i8*** %7, align 8
  %102 = call i32 @timelib_parse_tz_cor(i8** %101)
  store i32 %102, i32* %14, align 4
  br label %171

103:                                              ; preds = %83
  %104 = load i8**, i8*** %7, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 45
  br i1 %108, label %109, label %124

109:                                              ; preds = %103
  %110 = load i8**, i8*** %7, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %110, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load i8*, i8** @TIMELIB_ZONETYPE_OFFSET, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %10, align 8
  store i32 0, i32* %118, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  store i64 0, i64* %120, align 8
  %121 = load i8**, i8*** %7, align 8
  %122 = call i32 @timelib_parse_tz_cor(i8** %121)
  %123 = mul nsw i32 -1, %122
  store i32 %123, i32* %14, align 4
  br label %170

124:                                              ; preds = %103
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load i8**, i8*** %7, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = call i32 @timelib_lookup_abbr(i8** %127, i32* %128, i8** %17, i32* %15)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %124
  %133 = load i8*, i8** @TIMELIB_ZONETYPE_ABBR, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = call i32 @timelib_time_tz_abbr_update(%struct.TYPE_4__* %136, i8* %137)
  br label %139

139:                                              ; preds = %132, %124
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i8*, i8** %17, align 8
  %144 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %142, %139
  %147 = load i32* (i8*, i32*, i32*)*, i32* (i8*, i32*, i32*)** %12, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = call i32* %147(i8* %148, i32* %149, i32* %18)
  store i32* %150, i32** %13, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load i32*, i32** %13, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 2
  store i32* %153, i32** %155, align 8
  %156 = load i8*, i8** @TIMELIB_ZONETYPE_ID, align 8
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %15, align 4
  br label %161

161:                                              ; preds = %152, %146
  br label %162

162:                                              ; preds = %161, %142
  %163 = load i8*, i8** %17, align 8
  %164 = call i32 @timelib_free(i8* %163)
  %165 = load i32, i32* %15, align 4
  %166 = icmp eq i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = load i32*, i32** %10, align 8
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %162, %109
  br label %171

171:                                              ; preds = %170, %89
  br label %172

172:                                              ; preds = %178, %171
  %173 = load i8**, i8*** %7, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 41
  br i1 %177, label %178, label %182

178:                                              ; preds = %172
  %179 = load i8**, i8*** %7, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %179, align 8
  br label %172

182:                                              ; preds = %172
  %183 = load i32, i32* %14, align 4
  ret i32 %183
}

declare dso_local i32 @timelib_parse_tz_cor(i8**) #1

declare dso_local i32 @timelib_lookup_abbr(i8**, i32*, i8**, i32*) #1

declare dso_local i32 @timelib_time_tz_abbr_update(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @timelib_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
