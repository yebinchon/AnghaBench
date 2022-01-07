; ModuleID = '/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_number.c'
source_filename = "/home/carl/AnghaBench/poco/JSON/src/extr_pdjson.c_read_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)* }

@JSON_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unexpected byte, '%c'\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"123456789\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".eE\00", align 1
@JSON_NUMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"unexpected byte in number, '%c'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32)* @read_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_number(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = trunc i32 %7 to i8
  %9 = call i64 @pushchar(%struct.TYPE_14__* %6, i8 signext %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @JSON_ERROR, align 4
  store i32 %12, i32* %3, align 4
  br label %193

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 45
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %19, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = call i32 %20(%struct.TYPE_15__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @is_digit(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @read_number(%struct.TYPE_14__* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %193

31:                                               ; preds = %16
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @json_error(%struct.TYPE_14__* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31
  br label %60

36:                                               ; preds = %13
  %37 = load i32, i32* %5, align 4
  %38 = call i32* @strchr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = call i32 %44(%struct.TYPE_15__* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i64 @is_digit(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = call i64 @read_digits(%struct.TYPE_14__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @JSON_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %193

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %40
  br label %59

59:                                               ; preds = %58, %36
  br label %60

60:                                               ; preds = %59, %35
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = call i32 %64(%struct.TYPE_15__* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %60
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = call i64 @pushchar(%struct.TYPE_14__* %72, i8 signext 0)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @JSON_ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %193

77:                                               ; preds = %71
  %78 = load i32, i32* @JSON_NUMBER, align 4
  store i32 %78, i32* %3, align 4
  br label %193

79:                                               ; preds = %60
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 46
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = call i32 %86(%struct.TYPE_15__* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = trunc i32 %91 to i8
  %93 = call i64 @pushchar(%struct.TYPE_14__* %90, i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* @JSON_ERROR, align 4
  store i32 %96, i32* %3, align 4
  br label %193

97:                                               ; preds = %82
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = call i64 @read_digits(%struct.TYPE_14__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @JSON_ERROR, align 4
  store i32 %102, i32* %3, align 4
  br label %193

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %79
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = call i32 %108(%struct.TYPE_15__* %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 101
  br i1 %113, label %117, label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 69
  br i1 %116, label %117, label %185

117:                                              ; preds = %114, %104
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = call i32 %121(%struct.TYPE_15__* %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = load i32, i32* %5, align 4
  %127 = trunc i32 %126 to i8
  %128 = call i64 @pushchar(%struct.TYPE_14__* %125, i8 signext %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %117
  %131 = load i32, i32* @JSON_ERROR, align 4
  store i32 %131, i32* %3, align 4
  br label %193

132:                                              ; preds = %117
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = call i32 %136(%struct.TYPE_15__* %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp eq i32 %140, 43
  br i1 %141, label %145, label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %5, align 4
  %144 = icmp eq i32 %143, 45
  br i1 %144, label %145, label %167

145:                                              ; preds = %142, %132
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %148, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = call i32 %149(%struct.TYPE_15__* %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = trunc i32 %154 to i8
  %156 = call i64 @pushchar(%struct.TYPE_14__* %153, i8 signext %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = load i32, i32* @JSON_ERROR, align 4
  store i32 %159, i32* %3, align 4
  br label %193

160:                                              ; preds = %145
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %162 = call i64 @read_digits(%struct.TYPE_14__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i32, i32* @JSON_ERROR, align 4
  store i32 %165, i32* %3, align 4
  br label %193

166:                                              ; preds = %160
  br label %184

167:                                              ; preds = %142
  %168 = load i32, i32* %5, align 4
  %169 = call i64 @is_digit(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %173 = call i64 @read_digits(%struct.TYPE_14__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i32, i32* @JSON_ERROR, align 4
  store i32 %176, i32* %3, align 4
  br label %193

177:                                              ; preds = %171
  br label %183

178:                                              ; preds = %167
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @json_error(%struct.TYPE_14__* %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @JSON_ERROR, align 4
  store i32 %182, i32* %3, align 4
  br label %193

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %166
  br label %185

185:                                              ; preds = %184, %114
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = call i64 @pushchar(%struct.TYPE_14__* %186, i8 signext 0)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* @JSON_ERROR, align 4
  store i32 %190, i32* %3, align 4
  br label %193

191:                                              ; preds = %185
  %192 = load i32, i32* @JSON_NUMBER, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %189, %178, %175, %164, %158, %130, %101, %95, %77, %75, %55, %27, %11
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i64 @pushchar(%struct.TYPE_14__*, i8 signext) #1

declare dso_local i64 @is_digit(i32) #1

declare dso_local i32 @json_error(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @read_digits(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
