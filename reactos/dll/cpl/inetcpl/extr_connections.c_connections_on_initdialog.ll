; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_connections.c_connections_on_initdialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/inetcpl/extr_connections.c_connections_on_initdialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@INTERNET_MAX_URL_LENGTH = common dso_local global i32 0, align 4
@IDC_EDIT_PAC_SCRIPT = common dso_local global i32 0, align 4
@EM_LIMITTEXT = common dso_local global i32 0, align 4
@IDC_EDIT_PROXY_SERVER = common dso_local global i32 0, align 4
@IDC_EDIT_PROXY_PORT = common dso_local global i32 0, align 4
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@internet_settings = common dso_local global i32 0, align 4
@proxy_enable = common dso_local global i64* null, align 8
@REG_DWORD = common dso_local global i64 0, align 8
@proxy_server = common dso_local global i64* null, align 8
@REG_SZ = common dso_local global i64 0, align 8
@auto_config_url = common dso_local global i64* null, align 8
@connections = common dso_local global i32 0, align 4
@default_connection_settings = common dso_local global i64* null, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@REG_BINARY = common dso_local global i64 0, align 8
@CONNECTION_SETTINGS_VERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"unexpected structure version (%x)\0A\00", align 1
@CONNECTION_SETTINGS_WPAD = common dso_local global i32 0, align 4
@IDC_USE_WPAD = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ProxyEnable = %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ProxyServer = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"AutoConfigURL = %s\0A\00", align 1
@IDC_USE_PROXY_SERVER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IDC_USE_PAC_SCRIPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @connections_on_initdialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connections_on_initdialog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %16 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @IDC_EDIT_PAC_SCRIPT, align 4
  %25 = call i32 @GetDlgItem(i32 %23, i32 %24)
  %26 = load i32, i32* @EM_LIMITTEXT, align 4
  %27 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %28 = call i32 @SendMessageW(i32 %25, i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @IDC_EDIT_PROXY_SERVER, align 4
  %31 = call i32 @GetDlgItem(i32 %29, i32 %30)
  %32 = load i32, i32* @EM_LIMITTEXT, align 4
  %33 = load i32, i32* @INTERNET_MAX_URL_LENGTH, align 4
  %34 = sub nsw i32 %33, 10
  %35 = call i32 @SendMessageW(i32 %31, i32 %32, i32 %34, i32 0)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @IDC_EDIT_PROXY_PORT, align 4
  %38 = call i32 @GetDlgItem(i32 %36, i32 %37)
  %39 = load i32, i32* @EM_LIMITTEXT, align 4
  %40 = call i32 @SendMessageW(i32 %38, i32 %39, i32 8, i32 0)
  %41 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %42 = load i32, i32* @internet_settings, align 4
  %43 = call i64 @RegOpenKeyW(i32 %41, i32 %42, i32* %10)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  store i32 1, i32* %13, align 4
  br label %222

47:                                               ; preds = %1
  store i64 8, i64* %4, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64*, i64** @proxy_enable, align 8
  %50 = bitcast i64* %5 to i32*
  %51 = call i64 @RegQueryValueExW(i32 %48, i64* %49, i32* null, i64* %3, i32* %50, i64* %4)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @REG_DWORD, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %47
  store i64 0, i64* %5, align 8
  br label %59

59:                                               ; preds = %58, %54
  %60 = mul nuw i64 8, %17
  store i64 %60, i64* %4, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i64*, i64** @proxy_server, align 8
  %63 = bitcast i64* %19 to i32*
  %64 = call i64 @RegQueryValueExW(i32 %61, i64* %62, i32* null, i64* %3, i32* %63, i64* %4)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %59
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* @REG_SZ, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %59
  %72 = getelementptr inbounds i64, i64* %19, i64 0
  store i64 0, i64* %72, align 16
  br label %73

73:                                               ; preds = %71, %67
  %74 = mul nuw i64 8, %21
  store i64 %74, i64* %4, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i64*, i64** @auto_config_url, align 8
  %77 = bitcast i64* %22 to i32*
  %78 = call i64 @RegQueryValueExW(i32 %75, i64* %76, i32* null, i64* %3, i32* %77, i64* %4)
  store i64 %78, i64* %12, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @REG_SZ, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %73
  %86 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 0, i64* %86, align 16
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @connections, align 4
  %90 = call i64 @RegOpenKeyW(i32 %88, i32 %89, i32* %11)
  store i64 %90, i64* %12, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @RegCloseKey(i32 %91)
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %160, label %95

95:                                               ; preds = %87
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  store i64 0, i64* %4, align 8
  br label %96

96:                                               ; preds = %121, %95
  %97 = load i32, i32* %11, align 4
  %98 = load i64*, i64** @default_connection_settings, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %100 = bitcast %struct.TYPE_5__* %99 to i32*
  %101 = call i64 @RegQueryValueExW(i32 %97, i64* %98, i32* null, i64* %3, i32* %100, i64* %4)
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* @ERROR_MORE_DATA, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %96
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %106 = icmp ne %struct.TYPE_5__* %105, null
  %107 = xor i1 %106, true
  br label %108

108:                                              ; preds = %104, %96
  %109 = phi i1 [ true, %96 ], [ %107, %104 ]
  br i1 %109, label %110, label %123

110:                                              ; preds = %108
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %112 = load i64, i64* %4, align 8
  %113 = call %struct.TYPE_5__* @heap_realloc(%struct.TYPE_5__* %111, i64 %112)
  store %struct.TYPE_5__* %113, %struct.TYPE_5__** %15, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %115 = icmp ne %struct.TYPE_5__* %114, null
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @RegCloseKey(i32 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %120 = call i32 @heap_free(%struct.TYPE_5__* %119)
  store i32 1, i32* %13, align 4
  br label %222

121:                                              ; preds = %110
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %14, align 8
  br label %96

123:                                              ; preds = %108
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @RegCloseKey(i32 %124)
  %126 = load i64, i64* %12, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %157, label %128

128:                                              ; preds = %123
  %129 = load i64, i64* %3, align 8
  %130 = load i64, i64* @REG_BINARY, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %128
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @CONNECTION_SETTINGS_VERSION, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %141)
  br label %156

143:                                              ; preds = %132
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CONNECTION_SETTINGS_WPAD, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load i32, i32* %2, align 4
  %152 = load i32, i32* @IDC_USE_WPAD, align 4
  %153 = load i32, i32* @BST_CHECKED, align 4
  %154 = call i32 @CheckDlgButton(i32 %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %143
  br label %156

156:                                              ; preds = %155, %138
  br label %157

157:                                              ; preds = %156, %128, %123
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %159 = call i32 @heap_free(%struct.TYPE_5__* %158)
  br label %160

160:                                              ; preds = %157, %87
  %161 = load i64, i64* %5, align 8
  %162 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %161)
  %163 = call i64 @wine_dbgstr_w(i64* %19)
  %164 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %163)
  %165 = load i64*, i64** @auto_config_url, align 8
  %166 = call i64 @wine_dbgstr_w(i64* %165)
  %167 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %166)
  %168 = load i64, i64* %5, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %160
  %171 = load i32, i32* %2, align 4
  %172 = load i32, i32* @IDC_USE_PROXY_SERVER, align 4
  %173 = load i32, i32* @BST_CHECKED, align 4
  %174 = call i32 @CheckDlgButton(i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* %2, align 4
  %176 = load i32, i32* @IDC_EDIT_PROXY_SERVER, align 4
  %177 = call i32 @GetDlgItem(i32 %175, i32 %176)
  %178 = load i32, i32* @TRUE, align 4
  %179 = call i32 @EnableWindow(i32 %177, i32 %178)
  %180 = load i32, i32* %2, align 4
  %181 = load i32, i32* @IDC_EDIT_PROXY_PORT, align 4
  %182 = call i32 @GetDlgItem(i32 %180, i32 %181)
  %183 = load i32, i32* @TRUE, align 4
  %184 = call i32 @EnableWindow(i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %170, %160
  %186 = call i64* @strchrW(i64* %19, i8 signext 58)
  store i64* %186, i64** %8, align 8
  %187 = load i64*, i64** %8, align 8
  %188 = icmp ne i64* %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i64*, i64** %8, align 8
  store i64 0, i64* %190, align 8
  %191 = load i64*, i64** %8, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %8, align 8
  br label %193

193:                                              ; preds = %189, %185
  %194 = load i32, i32* %2, align 4
  %195 = load i32, i32* @IDC_EDIT_PROXY_SERVER, align 4
  %196 = call i32 @SetDlgItemTextW(i32 %194, i32 %195, i64* %19)
  %197 = load i64*, i64** %8, align 8
  %198 = icmp ne i64* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load i32, i32* %2, align 4
  %201 = load i32, i32* @IDC_EDIT_PROXY_PORT, align 4
  %202 = load i64*, i64** %8, align 8
  %203 = call i32 @SetDlgItemTextW(i32 %200, i32 %201, i64* %202)
  br label %204

204:                                              ; preds = %199, %193
  %205 = getelementptr inbounds i64, i64* %22, i64 0
  %206 = load i64, i64* %205, align 16
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %204
  %209 = load i32, i32* %2, align 4
  %210 = load i32, i32* @IDC_USE_PAC_SCRIPT, align 4
  %211 = load i32, i32* @BST_CHECKED, align 4
  %212 = call i32 @CheckDlgButton(i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %2, align 4
  %214 = load i32, i32* @IDC_EDIT_PAC_SCRIPT, align 4
  %215 = call i32 @GetDlgItem(i32 %213, i32 %214)
  %216 = load i32, i32* @TRUE, align 4
  %217 = call i32 @EnableWindow(i32 %215, i32 %216)
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* @IDC_EDIT_PAC_SCRIPT, align 4
  %220 = call i32 @SetDlgItemTextW(i32 %218, i32 %219, i64* %22)
  br label %221

221:                                              ; preds = %208, %204
  store i32 1, i32* %13, align 4
  br label %222

222:                                              ; preds = %221, %116, %46
  %223 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %223)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #2

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i64 @RegOpenKeyW(i32, i32, i32*) #2

declare dso_local i64 @RegQueryValueExW(i32, i64*, i32*, i64*, i32*, i64*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local %struct.TYPE_5__* @heap_realloc(%struct.TYPE_5__*, i64) #2

declare dso_local i32 @heap_free(%struct.TYPE_5__*) #2

declare dso_local i32 @FIXME(i8*, i64) #2

declare dso_local i32 @CheckDlgButton(i32, i32, i32) #2

declare dso_local i32 @TRACE(i8*, i64) #2

declare dso_local i64 @wine_dbgstr_w(i64*) #2

declare dso_local i32 @EnableWindow(i32, i32) #2

declare dso_local i64* @strchrW(i64*, i8 signext) #2

declare dso_local i32 @SetDlgItemTextW(i32, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
