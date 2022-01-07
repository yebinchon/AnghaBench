; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_walk_object.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/json/extr_json.c_json_walk_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i32 (%struct.TYPE_15__*)*, i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@JSON_OBJECT = common dso_local global i32 0, align 4
@JSON_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@JSON_FULLNAME_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_walk_object(i8* %0, %struct.TYPE_14__* %1, i64 %2, i64 %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %10, align 8
  %19 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 48, i1 false)
  %20 = bitcast i8* %19 to %struct.TYPE_15__*
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i8, i8* %23, i64 %28
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %12, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  store i8* %44, i8** %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %47 = call i32 @memcpy(%struct.TYPE_15__* %11, %struct.TYPE_15__* %46, i32 48)
  %48 = load i32, i32* @JSON_OBJECT, align 4
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 3
  store i32 (%struct.TYPE_15__*)* null, i32 (%struct.TYPE_15__*)** %50, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_15__*)* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %5
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 3
  %58 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %57, align 8
  %59 = call i32 %58(%struct.TYPE_15__* %11)
  br label %60

60:                                               ; preds = %55, %5
  %61 = load i8, i8* %12, align 1
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  store i8 %61, i8* %68, align 1
  store i32 1, i32* %13, align 4
  %69 = load i64, i64* %9, align 8
  store i64 %69, i64* %15, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %16, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  store i64 0, i64* %14, align 8
  br label %77

77:                                               ; preds = %222, %60
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %16, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %225

81:                                               ; preds = %77
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %113 [
    i32 129, label %87
    i32 130, label %94
    i32 131, label %103
    i32 128, label %112
  ]

87:                                               ; preds = %81
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @json_walk_primitive(i8* %88, %struct.TYPE_14__* %89, i64 %90, %struct.TYPE_15__* %11)
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %9, align 8
  store i32 1, i32* %13, align 4
  br label %221

94:                                               ; preds = %81
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, 1
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @json_walk_object(i8* %95, %struct.TYPE_14__* %96, i64 %98, i64 %99, %struct.TYPE_15__* %11)
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %9, align 8
  store i32 1, i32* %13, align 4
  br label %221

103:                                              ; preds = %81
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 1
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @json_walk_array(i8* %104, %struct.TYPE_14__* %105, i64 %107, i64 %108, %struct.TYPE_15__* %11)
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %9, align 8
  store i32 1, i32* %13, align 4
  br label %221

112:                                              ; preds = %81
  br label %113

113:                                              ; preds = %81, %112
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %213

116:                                              ; preds = %113
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub i64 %121, %126
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @JSON_NAME_LEN, align 4
  %131 = icmp sgt i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @unlikely(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %116
  %136 = load i32, i32* @JSON_NAME_LEN, align 4
  store i32 %136, i32* %17, align 4
  br label %137

137:                                              ; preds = %135, %116
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8, i8* %140, i64 %145
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @strncpy(i8* %139, i8* %146, i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @strlen(i8* %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %167 = call i32 @strlen(i8* %166)
  %168 = add nsw i32 %157, %167
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @strlen(i8* %170)
  %172 = add nsw i32 %168, %171
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = mul i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = call i8* @mallocz(i32 %177)
  store i8* %178, i8** %18, align 8
  %179 = load i8*, i8** %18, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  %190 = zext i1 %189 to i64
  %191 = select i1 %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @sprintf(i8* %179, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %182, i8* %191, i8* %193)
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* @JSON_FULLNAME_LEN, align 4
  %197 = icmp sgt i32 %195, %196
  %198 = zext i1 %197 to i32
  %199 = call i32 @unlikely(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %137
  %202 = load i32, i32* @JSON_FULLNAME_LEN, align 4
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %201, %137
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = load i8*, i8** %18, align 8
  %207 = load i32, i32* %17, align 4
  %208 = call i32 @strncpy(i8* %205, i8* %206, i32 %207)
  %209 = load i8*, i8** %18, align 8
  %210 = call i32 @freez(i8* %209)
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %220

213:                                              ; preds = %113
  %214 = load i8*, i8** %6, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %216 = load i64, i64* %9, align 8
  %217 = call i64 @json_walk_string(i8* %214, %struct.TYPE_14__* %215, i64 %216, %struct.TYPE_15__* %11)
  %218 = load i64, i64* %9, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %9, align 8
  store i32 1, i32* %13, align 4
  br label %220

220:                                              ; preds = %213, %203
  br label %221

221:                                              ; preds = %220, %103, %94, %87
  br label %222

222:                                              ; preds = %221
  %223 = load i64, i64* %14, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %14, align 8
  br label %77

225:                                              ; preds = %77
  %226 = load i64, i64* %9, align 8
  %227 = load i64, i64* %15, align 8
  %228 = sub i64 %226, %227
  ret i64 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #2

declare dso_local i64 @json_walk_primitive(i8*, %struct.TYPE_14__*, i64, %struct.TYPE_15__*) #2

declare dso_local i64 @json_walk_array(i8*, %struct.TYPE_14__*, i64, i64, %struct.TYPE_15__*) #2

declare dso_local i32 @unlikely(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @mallocz(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @freez(i8*) #2

declare dso_local i64 @json_walk_string(i8*, %struct.TYPE_14__*, i64, %struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
