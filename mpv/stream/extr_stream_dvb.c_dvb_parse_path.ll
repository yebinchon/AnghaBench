; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_parse_path.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_dvb.c_dvb_parse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i8*, %struct.TYPE_20__*, %struct.TYPE_25__* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_27__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@MAX_ADAPTERS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid devno: '%.*s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"NO CONFIGURATION FOUND FOR ADAPTER N. %d!\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"No channel list available for adapter %d!\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"DVB_CONFIG: prog=%s, devno=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_parse_path(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_27__, align 8
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %4, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %5, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bstr0(i32 %18)
  %20 = call i32 @bstr_split_tok(i32 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.TYPE_27__* %7, %struct.TYPE_27__* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = bitcast %struct.TYPE_27__* %6 to i8*
  %24 = bitcast %struct.TYPE_27__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %81

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @bstrtoll(i64 %47, %struct.TYPE_27__* %8, i32 0)
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %8, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %45
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAX_ADAPTERS, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59, %54, %45
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @BSTR_P(i64 %68)
  %70 = call i32 @MP_ERR(%struct.TYPE_24__* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  store i32 0, i32* %2, align 4
  br label %218

71:                                               ; preds = %59
  br label %80

72:                                               ; preds = %41
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %71
  br label %81

81:                                               ; preds = %80, %33
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  store i32 -1, i32* %83, align 8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %108, %81
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %90
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  br label %111

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %84

111:                                              ; preds = %103, %84
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @MP_ERR(%struct.TYPE_24__* %117, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  store i32 0, i32* %2, align 4
  br label %218

122:                                              ; preds = %111
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %151

129:                                              ; preds = %122
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i64 @strlen(i32* %134)
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %129
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @talloc_free(i8* %140)
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i8* @talloc_strdup(%struct.TYPE_26__* %142, i32* %147)
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 1
  store i8* %148, i8** %150, align 8
  br label %209

151:                                              ; preds = %129, %122
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @talloc_free(i8* %158)
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %6, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @bstrto0(%struct.TYPE_26__* %160, i64 %162)
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  br label %208

166:                                              ; preds = %151
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %168, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = icmp eq %struct.TYPE_22__* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %166
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @MP_ERR(%struct.TYPE_24__* %179, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %182)
  store i32 0, i32* %2, align 4
  br label %218

184:                                              ; preds = %166
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @talloc_free(i8* %187)
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %191, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i8* @talloc_strdup(%struct.TYPE_26__* %189, i32* %204)
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %184, %155
  br label %209

209:                                              ; preds = %208, %137
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @MP_VERBOSE(%struct.TYPE_24__* %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %213, i64 %216)
  store i32 1, i32* %2, align 4
  br label %218

218:                                              ; preds = %209, %178, %116, %65
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @bstr_split_tok(i32, i8*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @bstr0(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bstrtoll(i64, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_24__*, i8*, i64) #1

declare dso_local i64 @BSTR_P(i64) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i8* @talloc_strdup(%struct.TYPE_26__*, i32*) #1

declare dso_local i8* @bstrto0(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_24__*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
