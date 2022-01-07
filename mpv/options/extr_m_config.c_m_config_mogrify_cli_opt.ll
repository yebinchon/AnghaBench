; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_mogrify_cli_opt.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_mogrify_cli_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_option_type = type { i32, %struct.m_option_action* }
%struct.m_option_action = type { i8*, i32 }
%struct.m_config_option = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.m_option_type*, i64 }
%struct.m_config = type { i32, %struct.m_config_option* }
%struct.bstr = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@M_OPT_TYPE_CHOICE = common dso_local global i32 0, align 4
@m_option_type_cli_alias = common dso_local global %struct.m_option_type zeroinitializer, align 8
@m_option_type_alias = common dso_local global %struct.m_option_type zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.m_config_option* (%struct.m_config*, %struct.bstr*, i32*, i32*)* @m_config_mogrify_cli_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.m_config_option* @m_config_mogrify_cli_opt(%struct.m_config* %0, %struct.bstr* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.m_config_option*, align 8
  %6 = alloca %struct.m_config*, align 8
  %7 = alloca %struct.bstr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.m_config_option*, align 8
  %11 = alloca %struct.bstr, align 8
  %12 = alloca %struct.bstr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bstr, align 8
  %15 = alloca %struct.m_option_type*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.m_option_action*, align 8
  %18 = alloca %struct.bstr, align 8
  store %struct.m_config* %0, %struct.m_config** %6, align 8
  store %struct.bstr* %1, %struct.bstr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.m_config*, %struct.m_config** %6, align 8
  %22 = load %struct.bstr*, %struct.bstr** %7, align 8
  %23 = bitcast %struct.bstr* %22 to { i32, i8* }*
  %24 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %23, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct.m_config_option* @m_config_get_co(%struct.m_config* %21, i32 %25, i8* %27)
  store %struct.m_config_option* %28, %struct.m_config_option** %10, align 8
  %29 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %30 = icmp ne %struct.m_config_option* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  store %struct.m_config_option* %32, %struct.m_config_option** %5, align 8
  br label %249

33:                                               ; preds = %4
  %34 = load %struct.bstr*, %struct.bstr** %7, align 8
  %35 = bitcast %struct.bstr* %11 to i8*
  %36 = bitcast %struct.bstr* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %38 = icmp ne %struct.m_config_option* %37, null
  br i1 %38, label %70, label %39

39:                                               ; preds = %33
  %40 = call i64 @bstr_eatstart0(%struct.bstr* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load %struct.m_config*, %struct.m_config** %6, align 8
  %44 = bitcast %struct.bstr* %11 to { i32, i8* }*
  %45 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %44, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call %struct.m_config_option* @m_config_get_co(%struct.m_config* %43, i32 %46, i8* %48)
  store %struct.m_config_option* %49, %struct.m_config_option** %10, align 8
  %50 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %51 = icmp ne %struct.m_config_option* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %54 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.m_option_type*, %struct.m_option_type** %56, align 8
  %58 = getelementptr inbounds %struct.m_option_type, %struct.m_option_type* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @M_OPT_TYPE_CHOICE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52, %42
  store %struct.m_config_option* null, %struct.m_config_option** %5, align 8
  br label %249

64:                                               ; preds = %52
  %65 = load %struct.bstr*, %struct.bstr** %7, align 8
  %66 = bitcast %struct.bstr* %65 to i8*
  %67 = bitcast %struct.bstr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 16, i1 false)
  %68 = load i32*, i32** %8, align 8
  store i32 1, i32* %68, align 4
  %69 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  store %struct.m_config_option* %69, %struct.m_config_option** %5, align 8
  br label %249

70:                                               ; preds = %39, %33
  %71 = load %struct.m_config*, %struct.m_config** %6, align 8
  %72 = load %struct.bstr*, %struct.bstr** %7, align 8
  %73 = bitcast %struct.bstr* %72 to { i32, i8* }*
  %74 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %73, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call %struct.m_config_option* @m_config_get_co_any(%struct.m_config* %71, i32 %75, i8* %77)
  store %struct.m_config_option* %78, %struct.m_config_option** %10, align 8
  %79 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %80 = icmp ne %struct.m_config_option* %79, null
  br i1 %80, label %81, label %104

81:                                               ; preds = %70
  %82 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %83 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.m_option_type*, %struct.m_option_type** %85, align 8
  %87 = icmp eq %struct.m_option_type* %86, @m_option_type_cli_alias
  br i1 %87, label %88, label %104

88:                                               ; preds = %81
  %89 = load %struct.bstr*, %struct.bstr** %7, align 8
  %90 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %91 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  %96 = call { i32, i8* } @bstr0(i8* %95)
  %97 = bitcast %struct.bstr* %12 to { i32, i8* }*
  %98 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %97, i32 0, i32 0
  %99 = extractvalue { i32, i8* } %96, 0
  store i32 %99, i32* %98, align 8
  %100 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %97, i32 0, i32 1
  %101 = extractvalue { i32, i8* } %96, 1
  store i8* %101, i8** %100, align 8
  %102 = bitcast %struct.bstr* %89 to i8*
  %103 = bitcast %struct.bstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 16, i1 false)
  br label %104

104:                                              ; preds = %88, %81, %70
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %245, %104
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.m_config*, %struct.m_config** %6, align 8
  %108 = getelementptr inbounds %struct.m_config, %struct.m_config* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %248

111:                                              ; preds = %105
  %112 = load %struct.m_config*, %struct.m_config** %6, align 8
  %113 = getelementptr inbounds %struct.m_config, %struct.m_config* %112, i32 0, i32 1
  %114 = load %struct.m_config_option*, %struct.m_config_option** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %114, i64 %116
  store %struct.m_config_option* %117, %struct.m_config_option** %10, align 8
  %118 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %119 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call { i32, i8* } @bstr0(i8* %120)
  %122 = bitcast %struct.bstr* %14 to { i32, i8* }*
  %123 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %122, i32 0, i32 0
  %124 = extractvalue { i32, i8* } %121, 0
  store i32 %124, i32* %123, align 8
  %125 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %122, i32 0, i32 1
  %126 = extractvalue { i32, i8* } %121, 1
  store i8* %126, i8** %125, align 8
  %127 = load %struct.bstr*, %struct.bstr** %7, align 8
  %128 = bitcast %struct.bstr* %127 to { i32, i8* }*
  %129 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %128, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = bitcast %struct.bstr* %14 to { i32, i8* }*
  %134 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %133, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @bstr_startswith(i32 %130, i8* %132, i32 %135, i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %111
  br label %245

141:                                              ; preds = %111
  %142 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %143 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load %struct.m_option_type*, %struct.m_option_type** %145, align 8
  %147 = icmp eq %struct.m_option_type* %146, @m_option_type_alias
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load %struct.m_config*, %struct.m_config** %6, align 8
  %150 = bitcast %struct.bstr* %14 to { i32, i8* }*
  %151 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %150, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call %struct.m_config_option* @m_config_get_co_any(%struct.m_config* %149, i32 %152, i8* %154)
  store %struct.m_config_option* %155, %struct.m_config_option** %10, align 8
  br label %156

156:                                              ; preds = %148, %141
  %157 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %158 = icmp ne %struct.m_config_option* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  br label %245

160:                                              ; preds = %156
  %161 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %162 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load %struct.m_option_type*, %struct.m_option_type** %164, align 8
  store %struct.m_option_type* %165, %struct.m_option_type** %15, align 8
  store i32 0, i32* %16, align 4
  br label %166

166:                                              ; preds = %241, %160
  %167 = load %struct.m_option_type*, %struct.m_option_type** %15, align 8
  %168 = getelementptr inbounds %struct.m_option_type, %struct.m_option_type* %167, i32 0, i32 1
  %169 = load %struct.m_option_action*, %struct.m_option_action** %168, align 8
  %170 = icmp ne %struct.m_option_action* %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %166
  %172 = load %struct.m_option_type*, %struct.m_option_type** %15, align 8
  %173 = getelementptr inbounds %struct.m_option_type, %struct.m_option_type* %172, i32 0, i32 1
  %174 = load %struct.m_option_action*, %struct.m_option_action** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %174, i64 %176
  %178 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br label %181

181:                                              ; preds = %171, %166
  %182 = phi i1 [ false, %166 ], [ %180, %171 ]
  br i1 %182, label %183, label %244

183:                                              ; preds = %181
  %184 = load %struct.m_option_type*, %struct.m_option_type** %15, align 8
  %185 = getelementptr inbounds %struct.m_option_type, %struct.m_option_type* %184, i32 0, i32 1
  %186 = load %struct.m_option_action*, %struct.m_option_action** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %186, i64 %188
  store %struct.m_option_action* %189, %struct.m_option_action** %17, align 8
  %190 = load %struct.m_option_action*, %struct.m_option_action** %17, align 8
  %191 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = call { i32, i8* } @bstr0(i8* %192)
  %194 = bitcast %struct.bstr* %18 to { i32, i8* }*
  %195 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %194, i32 0, i32 0
  %196 = extractvalue { i32, i8* } %193, 0
  store i32 %196, i32* %195, align 8
  %197 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %194, i32 0, i32 1
  %198 = extractvalue { i32, i8* } %193, 1
  store i8* %198, i8** %197, align 8
  %199 = load %struct.bstr*, %struct.bstr** %7, align 8
  %200 = bitcast %struct.bstr* %199 to { i32, i8* }*
  %201 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %200, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = bitcast %struct.bstr* %18 to { i32, i8* }*
  %206 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %205, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = call i64 @bstr_endswith(i32 %202, i8* %204, i32 %207, i8* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %240

212:                                              ; preds = %183
  %213 = load %struct.bstr*, %struct.bstr** %7, align 8
  %214 = getelementptr inbounds %struct.bstr, %struct.bstr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = getelementptr inbounds %struct.bstr, %struct.bstr* %14, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  %219 = getelementptr inbounds %struct.bstr, %struct.bstr* %18, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %218, %220
  %222 = icmp eq i32 %215, %221
  br i1 %222, label %223, label %240

223:                                              ; preds = %212
  %224 = load %struct.bstr*, %struct.bstr** %7, align 8
  %225 = getelementptr inbounds %struct.bstr, %struct.bstr* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds %struct.bstr, %struct.bstr* %14, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %226, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 45
  br i1 %233, label %234, label %240

234:                                              ; preds = %223
  %235 = load %struct.m_option_action*, %struct.m_option_action** %17, align 8
  %236 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %9, align 8
  store i32 %237, i32* %238, align 4
  %239 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  store %struct.m_config_option* %239, %struct.m_config_option** %5, align 8
  br label %249

240:                                              ; preds = %223, %212, %183
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %16, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %16, align 4
  br label %166

244:                                              ; preds = %181
  br label %245

245:                                              ; preds = %244, %159, %140
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %13, align 4
  br label %105

248:                                              ; preds = %105
  store %struct.m_config_option* null, %struct.m_config_option** %5, align 8
  br label %249

249:                                              ; preds = %248, %234, %64, %63, %31
  %250 = load %struct.m_config_option*, %struct.m_config_option** %5, align 8
  ret %struct.m_config_option* %250
}

declare dso_local %struct.m_config_option* @m_config_get_co(%struct.m_config*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @bstr_eatstart0(%struct.bstr*, i8*) #1

declare dso_local %struct.m_config_option* @m_config_get_co_any(%struct.m_config*, i32, i8*) #1

declare dso_local { i32, i8* } @bstr0(i8*) #1

declare dso_local i32 @bstr_startswith(i32, i8*, i32, i8*) #1

declare dso_local i64 @bstr_endswith(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
