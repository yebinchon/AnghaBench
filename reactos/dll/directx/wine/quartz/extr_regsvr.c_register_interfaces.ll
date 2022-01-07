; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_interfaces.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_regsvr.c_register_interfaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_interface = type { i64, i64, i64, i64, i64, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@interface_keyname = common dso_local global i8* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@base_ifa_keyname = common dso_local global i32 0, align 4
@register_interfaces.fmt = internal constant [3 x i8] c"%d\00", align 1
@num_methods_keyname = common dso_local global i8* null, align 8
@ps_clsid_keyname = common dso_local global i32 0, align 4
@ps_clsid32_keyname = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_interface*)* @register_interfaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_interfaces(%struct.regsvr_interface* %0) #0 {
  %2 = alloca %struct.regsvr_interface*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [39 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regsvr_interface* %0, %struct.regsvr_interface** %2, align 8
  %8 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %10 = load i8*, i8** @interface_keyname, align 8
  %11 = load i32, i32* @KEY_READ, align 4
  %12 = load i32, i32* @KEY_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @RegCreateKeyExW(i32 %9, i8* %10, i32 0, i32* null, i32 0, i32 %13, i32* null, i32* %4, i32* null)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ERROR_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %172

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %165, %19
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ERROR_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %26 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi i1 [ false, %20 ], [ %28, %24 ]
  br i1 %30, label %31, label %168

31:                                               ; preds = %29
  %32 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %33 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %36 = call i32 @StringFromGUID2(i64 %34, i8* %35, i32 39)
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* @KEY_READ, align 4
  %40 = load i32, i32* @KEY_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @RegCreateKeyExW(i32 %37, i8* %38, i32 0, i32* null, i32 0, i32 %41, i32* null, i32* %6, i32* null)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %169

47:                                               ; preds = %31
  %48 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %49 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @REG_SZ, align 4
  %55 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %56 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %60 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %59, i32 0, i32 4
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
  br label %162

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %72 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @base_ifa_keyname, align 4
  %78 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %79 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @register_key_guid(i32 %76, i32 %77, i64 %80)
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @ERROR_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %162

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86, %70
  %88 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %89 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sle i64 0, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  %94 = load i8*, i8** @num_methods_keyname, align 8
  %95 = load i32, i32* @KEY_READ, align 4
  %96 = load i32, i32* @KEY_WRITE, align 4
  %97 = or i32 %95, %96
  %98 = call i64 @RegCreateKeyExW(i32 %93, i8* %94, i32 0, i32* null, i32 0, i32 %97, i32* null, i32* %7, i32* null)
  store i64 %98, i64* %3, align 8
  %99 = load i64, i64* %3, align 8
  %100 = load i64, i64* @ERROR_SUCCESS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %162

103:                                              ; preds = %92
  %104 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %105 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %106 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @sprintfW(i8* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @register_interfaces.fmt, i64 0, i64 0), i64 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @REG_SZ, align 4
  %111 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %112 = bitcast i8* %111 to i32*
  %113 = getelementptr inbounds [39 x i8], [39 x i8]* %5, i64 0, i64 0
  %114 = call i32 @lstrlenW(i8* %113)
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = mul i64 %116, 1
  %118 = trunc i64 %117 to i32
  %119 = call i64 @RegSetValueExW(i32 %109, i32* null, i32 0, i32 %110, i32* %112, i32 %118)
  store i64 %119, i64* %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @RegCloseKey(i32 %120)
  %122 = load i64, i64* %3, align 8
  %123 = load i64, i64* @ERROR_SUCCESS, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %103
  br label %162

126:                                              ; preds = %103
  br label %127

127:                                              ; preds = %126, %87
  %128 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %129 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* @ps_clsid_keyname, align 4
  %135 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %136 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @register_key_guid(i32 %133, i32 %134, i64 %137)
  store i64 %138, i64* %3, align 8
  %139 = load i64, i64* %3, align 8
  %140 = load i64, i64* @ERROR_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %162

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143, %127
  %145 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %146 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %144
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @ps_clsid32_keyname, align 4
  %152 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %153 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @register_key_guid(i32 %150, i32 %151, i64 %154)
  store i64 %155, i64* %3, align 8
  %156 = load i64, i64* %3, align 8
  %157 = load i64, i64* @ERROR_SUCCESS, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %162

160:                                              ; preds = %149
  br label %161

161:                                              ; preds = %160, %144
  br label %162

162:                                              ; preds = %161, %159, %142, %125, %102, %85, %68
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @RegCloseKey(i32 %163)
  br label %165

165:                                              ; preds = %162
  %166 = load %struct.regsvr_interface*, %struct.regsvr_interface** %2, align 8
  %167 = getelementptr inbounds %struct.regsvr_interface, %struct.regsvr_interface* %166, i32 1
  store %struct.regsvr_interface* %167, %struct.regsvr_interface** %2, align 8
  br label %20

168:                                              ; preds = %29
  br label %169

169:                                              ; preds = %168, %46
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @RegCloseKey(i32 %170)
  br label %172

172:                                              ; preds = %169, %18
  %173 = load i64, i64* %3, align 8
  %174 = load i64, i64* @ERROR_SUCCESS, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i64, i64* %3, align 8
  %178 = call i32 @HRESULT_FROM_WIN32(i64 %177)
  br label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @S_OK, align 4
  br label %181

181:                                              ; preds = %179, %176
  %182 = phi i32 [ %178, %176 ], [ %180, %179 ]
  ret i32 %182
}

declare dso_local i64 @RegCreateKeyExW(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @StringFromGUID2(i64, i8*, i32) #1

declare dso_local i64 @RegSetValueExA(i32, i32*, i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @register_key_guid(i32, i32, i64) #1

declare dso_local i32 @sprintfW(i8*, i8*, i64) #1

declare dso_local i64 @RegSetValueExW(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
