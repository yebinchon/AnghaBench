; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_coclasses.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_coclasses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_coclass = type { i32, i64, i32*, i32*, i64, i64, i32*, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@ips_keyname = common dso_local global i32 0, align 4
@ips32_keyname = common dso_local global i32* null, align 8
@tmodel_valuename = common dso_local global i32* null, align 8
@progid_keyname = common dso_local global i32 0, align 4
@viprogid_keyname = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_coclass*)* @register_coclasses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_coclasses(%struct.regsvr_coclass* %0) #0 {
  %2 = alloca %struct.regsvr_coclass*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [39 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regsvr_coclass* %0, %struct.regsvr_coclass** %2, align 8
  %8 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %10 = load i32*, i32** @clsid_keyname, align 8
  %11 = load i32, i32* @KEY_READ, align 4
  %12 = load i32, i32* @KEY_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @RegCreateKeyExW(i32 %9, i32* %10, i32 0, i32* null, i32 0, i32 %13, i32* null, i32* %4, i32* null)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %226

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %219, %19
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %26 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %222

31:                                               ; preds = %29
  %32 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %33 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %32, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %36 = call i32 @StringFromGUID2(i64 %34, i32* %35, i32 39)
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %39 = load i32, i32* @KEY_READ, align 4
  %40 = load i32, i32* @KEY_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @RegCreateKeyExW(i32 %37, i32* %38, i32 0, i32* null, i32 0, i32 %41, i32* null, i32* %6, i32* null)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %223

47:                                               ; preds = %31
  %48 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %49 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @REG_SZ, align 4
  %55 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %56 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %60 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @strlen(i64 %61)
  %63 = add nsw i64 %62, 1
  %64 = call i64 @RegSetValueExA(i32 %53, i32* null, i32 0, i32 %54, i32* %58, i64 %63)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %216

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %72 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ips_keyname, align 4
  %78 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %79 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = call i64 @register_key_defvalueA(i32 %76, i32 %77, i32* %80)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %216

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %70
  %88 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %89 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %146

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = load i32*, i32** @ips32_keyname, align 8
  %95 = load i32, i32* @KEY_READ, align 4
  %96 = load i32, i32* @KEY_WRITE, align 4
  %97 = or i32 %95, %96
  %98 = call i64 @RegCreateKeyExW(i32 %93, i32* %94, i32 0, i32* null, i32 0, i32 %97, i32* null, i32* %7, i32* null)
  store i64 %98, i64* %3, align 8
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* @ERROR_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %216

103:                                              ; preds = %92
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @REG_SZ, align 4
  %106 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %107 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %111 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @lstrlenA(i64 %112)
  %114 = add nsw i64 %113, 1
  %115 = call i64 @RegSetValueExA(i32 %104, i32* null, i32 0, i32 %105, i32* %109, i64 %114)
  store i64 %115, i64* %3, align 8
  %116 = load i64, i64* %3, align 8
  %117 = load i64, i64* @ERROR_SUCCESS, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %103
  %120 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %121 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = load i32*, i32** @tmodel_valuename, align 8
  %127 = load i32, i32* @REG_SZ, align 4
  %128 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %129 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i32*
  %132 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %133 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @strlen(i64 %134)
  %136 = add nsw i64 %135, 1
  %137 = call i64 @RegSetValueExA(i32 %125, i32* %126, i32 0, i32 %127, i32* %131, i64 %136)
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %124, %119, %103
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @RegCloseKey(i32 %139)
  %141 = load i64, i64* %3, align 8
  %142 = load i64, i64* @ERROR_SUCCESS, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %216

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %145, %87
  %147 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %148 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %179

151:                                              ; preds = %146
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @progid_keyname, align 4
  %154 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %155 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = call i64 @register_key_defvalueA(i32 %152, i32 %153, i32* %156)
  store i64 %157, i64* %3, align 8
  %158 = load i64, i64* %3, align 8
  %159 = load i64, i64* @ERROR_SUCCESS, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %216

162:                                              ; preds = %151
  %163 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %164 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %165 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %168 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %171 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @register_progid(i32* %163, i32* %166, i32* null, i64 %169, i32 %172)
  store i64 %173, i64* %3, align 8
  %174 = load i64, i64* %3, align 8
  %175 = load i64, i64* @ERROR_SUCCESS, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %162
  br label %216

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %146
  %180 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %181 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %215

184:                                              ; preds = %179
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @viprogid_keyname, align 4
  %187 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %188 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = call i64 @register_key_defvalueA(i32 %185, i32 %186, i32* %189)
  store i64 %190, i64* %3, align 8
  %191 = load i64, i64* %3, align 8
  %192 = load i64, i64* @ERROR_SUCCESS, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %184
  br label %216

195:                                              ; preds = %184
  %196 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %197 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %198 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %201 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %204 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %207 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @register_progid(i32* %196, i32* %199, i32* %202, i64 %205, i32 %208)
  store i64 %209, i64* %3, align 8
  %210 = load i64, i64* %3, align 8
  %211 = load i64, i64* @ERROR_SUCCESS, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %195
  br label %216

214:                                              ; preds = %195
  br label %215

215:                                              ; preds = %214, %179
  br label %216

216:                                              ; preds = %215, %213, %194, %177, %161, %144, %102, %85, %68
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @RegCloseKey(i32 %217)
  br label %219

219:                                              ; preds = %216
  %220 = load %struct.regsvr_coclass*, %struct.regsvr_coclass** %2, align 8
  %221 = getelementptr inbounds %struct.regsvr_coclass, %struct.regsvr_coclass* %220, i32 1
  store %struct.regsvr_coclass* %221, %struct.regsvr_coclass** %2, align 8
  br label %20

222:                                              ; preds = %29
  br label %223

223:                                              ; preds = %222, %46
  %224 = load i32, i32* %4, align 4
  %225 = call i32 @RegCloseKey(i32 %224)
  br label %226

226:                                              ; preds = %223, %18
  %227 = load i64, i64* %3, align 8
  %228 = load i64, i64* @ERROR_SUCCESS, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = load i64, i64* %3, align 8
  %232 = call i32 @HRESULT_FROM_WIN32(i64 %231)
  br label %235

233:                                              ; preds = %226
  %234 = load i32, i32* @S_OK, align 4
  br label %235

235:                                              ; preds = %233, %230
  %236 = phi i32 [ %232, %230 ], [ %234, %233 ]
  ret i32 %236
}

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @StringFromGUID2(i64, i32*, i32) #1

declare dso_local i64 @RegSetValueExA(i32, i32*, i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @register_key_defvalueA(i32, i32, i32*) #1

declare dso_local i64 @lstrlenA(i64) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @register_progid(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
