; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_connections.c_connections_on_notify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_connections.c_connections_on_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@PSN_APPLY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@internet_settings = common dso_local global i32 0, align 4
@IDC_USE_PROXY_SERVER = common dso_local global i32 0, align 4
@proxy_enable = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ProxyEnable set to %x\0A\00", align 1
@IDC_EDIT_PROXY_SERVER = common dso_local global i32 0, align 4
@IDC_EDIT_PROXY_PORT = common dso_local global i32 0, align 4
@proxy_server = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"ProxtServer set to %s\0A\00", align 1
@IDC_USE_PAC_SCRIPT = common dso_local global i32 0, align 4
@IDC_EDIT_PAC_SCRIPT = common dso_local global i32 0, align 4
@auto_config_url = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"AutoConfigURL set to %s\0A\00", align 1
@IDC_USE_WPAD = common dso_local global i32 0, align 4
@connections = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@default_connection_settings = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @connections_on_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connections_on_notify(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %24 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  %28 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %12, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PSN_APPLY, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

41:                                               ; preds = %3
  %42 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %43 = load i32, i32* @internet_settings, align 4
  %44 = call i64 @RegOpenKeyW(i32 %42, i32 %43, i32* %21)
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %20, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @IDC_USE_PROXY_SERVER, align 4
  %52 = call i32 @IsDlgButtonChecked(i32 %50, i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* @proxy_enable, align 4
  %55 = load i32, i32* @REG_DWORD, align 4
  %56 = call i64 @RegSetValueExW(i32 %53, i32 %54, i32 0, i32 %55, i32* %16, i32 4)
  store i64 %56, i64* %20, align 8
  %57 = load i64, i64* %20, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @RegCloseKey(i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

63:                                               ; preds = %49
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @IDC_EDIT_PROXY_SERVER, align 4
  %68 = call i64 @ARRAY_SIZE(i8* %27)
  %69 = call i32 @GetDlgItemTextW(i32 %66, i32 %67, i8* %27, i64 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %113

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %27, i64 %75
  store i8 58, i8* %76, align 1
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @IDC_EDIT_PROXY_PORT, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %27, i64 %80
  %82 = call i64 @ARRAY_SIZE(i8* %27)
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = sub nsw i64 %82, %84
  %86 = call i32 @GetDlgItemTextW(i32 %77, i32 %78, i8* %81, i64 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %27, i64 %92
  store i8 56, i8* %93, align 1
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %27, i64 %96
  store i8 48, i8* %97, align 1
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %27, i64 %99
  store i8 0, i8* %100, align 1
  br label %101

101:                                              ; preds = %89, %72
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* @proxy_server, align 4
  %104 = load i32, i32* @REG_SZ, align 4
  %105 = bitcast i8* %27 to i32*
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 1
  %111 = trunc i64 %110 to i32
  %112 = call i64 @RegSetValueExW(i32 %102, i32 %103, i32 0, i32 %104, i32* %105, i32 %111)
  store i64 %112, i64* %20, align 8
  br label %123

113:                                              ; preds = %63
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* @proxy_server, align 4
  %116 = call i64 @RegDeleteValueW(i32 %114, i32 %115)
  store i64 %116, i64* %20, align 8
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %121, i64* %20, align 8
  br label %122

122:                                              ; preds = %120, %113
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i64, i64* %20, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %21, align 4
  %128 = call i32 @RegCloseKey(i32 %127)
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

130:                                              ; preds = %123
  %131 = call i32 @wine_dbgstr_w(i8* %27)
  %132 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @IDC_USE_PAC_SCRIPT, align 4
  %135 = call i32 @IsDlgButtonChecked(i32 %133, i32 %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @IDC_EDIT_PAC_SCRIPT, align 4
  %138 = call i64 @ARRAY_SIZE(i8* %30)
  %139 = call i32 @GetDlgItemTextW(i32 %136, i32 %137, i8* %30, i64 %138)
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %130
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %142, %130
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %144
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* @auto_config_url, align 4
  %150 = load i32, i32* @REG_SZ, align 4
  %151 = bitcast i8* %30 to i32*
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = mul i64 %153, 1
  %155 = trunc i64 %154 to i32
  %156 = call i64 @RegSetValueExW(i32 %148, i32 %149, i32 0, i32 %150, i32* %151, i32 %155)
  store i64 %156, i64* %20, align 8
  br label %167

157:                                              ; preds = %144
  %158 = load i32, i32* %21, align 4
  %159 = load i32, i32* @auto_config_url, align 4
  %160 = call i64 @RegDeleteValueW(i32 %158, i32 %159)
  store i64 %160, i64* %20, align 8
  %161 = load i64, i64* %20, align 8
  %162 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %165, i64* %20, align 8
  br label %166

166:                                              ; preds = %164, %157
  br label %167

167:                                              ; preds = %166, %147
  %168 = load i64, i64* %20, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i32, i32* %21, align 4
  %172 = call i32 @RegCloseKey(i32 %171)
  %173 = load i32, i32* @FALSE, align 4
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

174:                                              ; preds = %167
  %175 = load i32, i32* %17, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %179

178:                                              ; preds = %174
  br label %179

179:                                              ; preds = %178, %177
  %180 = phi i8* [ %30, %177 ], [ null, %178 ]
  %181 = call i32 @wine_dbgstr_w(i8* %180)
  %182 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @IDC_USE_WPAD, align 4
  %185 = call i32 @IsDlgButtonChecked(i32 %183, i32 %184)
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* @connections, align 4
  %188 = load i32, i32* @KEY_WRITE, align 4
  %189 = call i64 @RegCreateKeyExW(i32 %186, i32 %187, i32 0, i32* null, i32 0, i32 %188, i32* null, i32* %22, i32* null)
  store i64 %189, i64* %20, align 8
  %190 = load i32, i32* %21, align 4
  %191 = call i32 @RegCloseKey(i32 %190)
  %192 = load i64, i64* %20, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %179
  %195 = load i32, i32* @FALSE, align 4
  store i32 %195, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

196:                                              ; preds = %179
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %17, align 4
  %200 = call i32 @create_connection_settings(i32 %197, i8* %27, i32 %198, i32 %199, i8* %30, i32** %8)
  store i32 %200, i32* %19, align 4
  %201 = load i32, i32* %19, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %22, align 4
  %205 = call i32 @RegCloseKey(i32 %204)
  %206 = load i32, i32* @FALSE, align 4
  store i32 %206, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

207:                                              ; preds = %196
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* @default_connection_settings, align 4
  %210 = load i32, i32* @REG_BINARY, align 4
  %211 = load i32*, i32** %8, align 8
  %212 = load i32, i32* %19, align 4
  %213 = call i64 @RegSetValueExW(i32 %208, i32 %209, i32 0, i32 %210, i32* %211, i32 %212)
  store i64 %213, i64* %20, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @heap_free(i32* %214)
  %216 = load i32, i32* %22, align 4
  %217 = call i32 @RegCloseKey(i32 %216)
  %218 = load i64, i64* %20, align 8
  %219 = icmp ne i64 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  store i32 %221, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %222

222:                                              ; preds = %207, %203, %194, %170, %126, %59, %47, %39
  %223 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %223)
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #2

declare dso_local i32 @IsDlgButtonChecked(i32, i32) #2

declare dso_local i64 @RegSetValueExW(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @GetDlgItemTextW(i32, i32, i8*, i64) #2

declare dso_local i64 @ARRAY_SIZE(i8*) #2

declare dso_local i64 @RegDeleteValueW(i32, i32) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @create_connection_settings(i32, i8*, i32, i32, i8*, i32**) #2

declare dso_local i32 @heap_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
