; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_properties_expand_string.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_property.c_m_properties_expand_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_13__ = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c":}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"$>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"$}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @m_properties_expand_string(%struct.m_property* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.m_property*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.TYPE_13__, align 8
  store %struct.m_property* %0, %struct.m_property** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = call { i32, i8* } @bstr0(i8* %20)
  %22 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %23 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %22, i32 0, i32 0
  %24 = extractvalue { i32, i8* } %21, 0
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %22, i32 0, i32 1
  %26 = extractvalue { i32, i8* } %21, 1
  store i8* %26, i8** %25, align 8
  br label %27

27:                                               ; preds = %190, %3
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %191

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = call i32 @bstr_eatstart0(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %40, %37
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  br label %190

48:                                               ; preds = %34, %31
  %49 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %50 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %49, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @bstr_startswith0(i32 %51, i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %139

56:                                               ; preds = %48
  %57 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %58 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %57, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @bstr_find0(i32 %59, i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %139

64:                                               ; preds = %56
  %65 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %66 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %65, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call { i32, i8* } @bstr_cut(i32 %67, i8* %69, i32 2)
  %71 = bitcast %struct.TYPE_13__* %13 to { i32, i8* }*
  %72 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %71, i32 0, i32 0
  %73 = extractvalue { i32, i8* } %70, 0
  store i32 %73, i32* %72, align 8
  %74 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %71, i32 0, i32 1
  %75 = extractvalue { i32, i8* } %70, 1
  store i8* %75, i8** %74, align 8
  %76 = bitcast %struct.TYPE_13__* %12 to i8*
  %77 = bitcast %struct.TYPE_13__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  %80 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %81 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %80, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @bstrcspn(i32 %82, i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %64
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  br label %93

91:                                               ; preds = %64
  %92 = load i32, i32* %14, align 4
  br label %93

93:                                               ; preds = %91, %88
  %94 = phi i32 [ %90, %88 ], [ %92, %91 ]
  %95 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %96 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %95, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call { i32, i8* } @bstr_splice(i32 %97, i8* %99, i32 0, i32 %94)
  %101 = bitcast %struct.TYPE_13__* %15 to { i32, i8* }*
  %102 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %101, i32 0, i32 0
  %103 = extractvalue { i32, i8* } %100, 0
  store i32 %103, i32* %102, align 8
  %104 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %101, i32 0, i32 1
  %105 = extractvalue { i32, i8* } %100, 1
  store i8* %105, i8** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %108 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %107, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call { i32, i8* } @bstr_cut(i32 %109, i8* %111, i32 %106)
  %113 = bitcast %struct.TYPE_13__* %16 to { i32, i8* }*
  %114 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %113, i32 0, i32 0
  %115 = extractvalue { i32, i8* } %112, 0
  store i32 %115, i32* %114, align 8
  %116 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %113, i32 0, i32 1
  %117 = extractvalue { i32, i8* } %112, 1
  store i8* %117, i8** %116, align 8
  %118 = bitcast %struct.TYPE_13__* %12 to i8*
  %119 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 16, i1 false)
  %120 = call i32 @bstr_eatstart0(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %138, label %123

123:                                              ; preds = %93
  %124 = load %struct.m_property*, %struct.m_property** %4, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = bitcast %struct.TYPE_13__* %15 to { i32, i8* }*
  %128 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %127, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @expand_property(%struct.m_property* %124, i8** %7, i32* %8, i32 %129, i8* %131, i32 %125, i8* %126)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = load i32, i32* %10, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %135, %123
  br label %138

138:                                              ; preds = %137, %93
  br label %189

139:                                              ; preds = %56, %48
  %140 = load i32, i32* %10, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = call i32 @bstr_eatstart0(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %147 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %146, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @append_str(i8** %7, i32* %8, i32 %148, i8* %150)
  br label %191

152:                                              ; preds = %142, %139
  %153 = call i32 @bstr_eatstart0(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i8 36, i8* %18, align 1
  br label %179

156:                                              ; preds = %152
  %157 = call i32 @bstr_eatstart0(%struct.TYPE_13__* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i8 125, i8* %18, align 1
  br label %178

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  store i8 %164, i8* %18, align 1
  %165 = bitcast %struct.TYPE_13__* %12 to { i32, i8* }*
  %166 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %165, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call { i32, i8* } @bstr_cut(i32 %167, i8* %169, i32 1)
  %171 = bitcast %struct.TYPE_13__* %19 to { i32, i8* }*
  %172 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %171, i32 0, i32 0
  %173 = extractvalue { i32, i8* } %170, 0
  store i32 %173, i32* %172, align 8
  %174 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %171, i32 0, i32 1
  %175 = extractvalue { i32, i8* } %170, 1
  store i8* %175, i8** %174, align 8
  %176 = bitcast %struct.TYPE_13__* %12 to i8*
  %177 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %176, i8* align 8 %177, i64 16, i1 false)
  br label %178

178:                                              ; preds = %160, %159
  br label %179

179:                                              ; preds = %178, %155
  %180 = load i32, i32* %9, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %179
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i8, i8* %18, align 1
  %186 = call i32 @MP_TARRAY_APPEND(i32* null, i8* %183, i32 %184, i8 signext %185)
  br label %187

187:                                              ; preds = %182, %179
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188, %138
  br label %190

190:                                              ; preds = %189, %45
  br label %27

191:                                              ; preds = %145, %27
  %192 = load i8*, i8** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @MP_TARRAY_APPEND(i32* null, i8* %192, i32 %193, i8 signext 0)
  %195 = load i8*, i8** %7, align 8
  ret i8* %195
}

declare dso_local { i32, i8* } @bstr0(i8*) #1

declare dso_local i32 @bstr_eatstart0(%struct.TYPE_13__*, i8*) #1

declare dso_local i64 @bstr_startswith0(i32, i8*, i8*) #1

declare dso_local i64 @bstr_find0(i32, i8*, i8*) #1

declare dso_local { i32, i8* } @bstr_cut(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bstrcspn(i32, i8*, i8*) #1

declare dso_local { i32, i8* } @bstr_splice(i32, i8*, i32, i32) #1

declare dso_local i32 @expand_property(%struct.m_property*, i8**, i32*, i32, i8*, i32, i8*) #1

declare dso_local i32 @append_str(i8**, i32*, i32, i8*) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, i8*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
