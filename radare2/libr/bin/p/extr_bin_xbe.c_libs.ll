; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xbe.c_libs.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xbe.c_libs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, i32 }

@free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s %i.%i.%i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_17__*)* @libs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @libs(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = icmp ne %struct.TYPE_15__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21, %16, %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %249

29:                                               ; preds = %21
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %4, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %5, align 8
  %37 = call %struct.TYPE_16__* (...) @r_list_new()
  store %struct.TYPE_16__* %37, %struct.TYPE_16__** %11, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %39 = icmp ne %struct.TYPE_16__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %249

41:                                               ; preds = %29
  %42 = load i32, i32* @free, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %62

53:                                               ; preds = %41
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %53, %52
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %77, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, 24
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = icmp ugt i64 %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68, %62
  br label %246

78:                                               ; preds = %68
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = bitcast %struct.TYPE_13__* %10 to i32*
  %84 = call i32 @r_buf_read_at(i32 %81, i32 %82, i32* %83, i32 24)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %246

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 7
  store i8 0, i8* %91, align 1
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @r_str_newf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %93, i32 %95, i32 %97, i32 %99)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @r_list_append(%struct.TYPE_16__* %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %88
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %125

116:                                              ; preds = %107
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %116, %115
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %126, %129
  br i1 %130, label %140, label %131

131:                                              ; preds = %125
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %133, 24
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = icmp ugt i64 %134, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %131, %125
  br label %246

141:                                              ; preds = %131
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %7, align 4
  %146 = bitcast %struct.TYPE_13__* %10 to i32*
  %147 = call i32 @r_buf_read_at(i32 %144, i32 %145, i32* %146, i32 24)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp slt i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %246

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 7
  store i8 0, i8* %154, align 1
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i8* @r_str_newf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %156, i32 %158, i32 %160, i32 %162)
  store i8* %163, i8** %12, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %151
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %168 = load i8*, i8** %12, align 8
  %169 = call i32 @r_list_append(%struct.TYPE_16__* %167, i8* %168)
  br label %170

170:                                              ; preds = %166, %151
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %246

177:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %241, %177
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %244

182:                                              ; preds = %178
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 %186, %189
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = mul i64 %192, 24
  %194 = add i64 %190, %193
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %196, %199
  br i1 %200, label %210, label %201

201:                                              ; preds = %182
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = add i64 %203, 24
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = icmp ugt i64 %204, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %201, %182
  br label %246

211:                                              ; preds = %201
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %13, align 4
  %216 = bitcast %struct.TYPE_13__* %10 to i32*
  %217 = call i32 @r_buf_read_at(i32 %214, i32 %215, i32* %216, i32 24)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %211
  br label %246

221:                                              ; preds = %211
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 7
  store i8 0, i8* %224, align 1
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i8* @r_str_newf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %226, i32 %228, i32 %230, i32 %232)
  store i8* %233, i8** %12, align 8
  %234 = load i8*, i8** %12, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %221
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @r_list_append(%struct.TYPE_16__* %237, i8* %238)
  br label %240

240:                                              ; preds = %236, %221
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %6, align 4
  br label %178

244:                                              ; preds = %178
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %245, %struct.TYPE_16__** %2, align 8
  br label %249

246:                                              ; preds = %220, %210, %176, %150, %140, %87, %77
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %248 = call i32 @r_list_free(%struct.TYPE_16__* %247)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %249

249:                                              ; preds = %246, %244, %40, %28
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %250
}

declare dso_local %struct.TYPE_16__* @r_list_new(...) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @r_list_append(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @r_list_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
