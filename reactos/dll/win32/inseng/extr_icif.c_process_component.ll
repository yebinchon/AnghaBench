; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_component.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/inseng/extr_icif.c_process_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciffile = type { i32 }
%struct.inf_section = type { i32 }
%struct.cifcomponent = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@cifcomponentVtbl = common dso_local global i32 0, align 4
@ActionNone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"DisplayName\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GUID\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Details\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Locale\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"PatchID\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"InstalledSize\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"SuccessKey\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"CancelKey\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"ProgressKey\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"UninstallKey\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"Reboot\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"AdminCheck\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"UIVisible\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ActiveSetupAware\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciffile*, %struct.inf_section*, i8*)* @process_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_component(%struct.ciffile* %0, %struct.inf_section* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ciffile*, align 8
  %6 = alloca %struct.inf_section*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cifcomponent*, align 8
  %9 = alloca i32, align 4
  store %struct.ciffile* %0, %struct.ciffile** %5, align 8
  store %struct.inf_section* %1, %struct.inf_section** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %10, i32* %9, align 4
  %11 = call %struct.cifcomponent* @heap_alloc_zero(i32 128)
  store %struct.cifcomponent* %11, %struct.cifcomponent** %8, align 8
  %12 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %13 = icmp ne %struct.cifcomponent* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %4, align 4
  br label %217

16:                                               ; preds = %3
  %17 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %18 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %17, i32 0, i32 28
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* @cifcomponentVtbl, i32** %19, align 8
  %20 = load %struct.ciffile*, %struct.ciffile** %5, align 8
  %21 = getelementptr inbounds %struct.ciffile, %struct.ciffile* %20, i32 0, i32 0
  %22 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %23 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %22, i32 0, i32 27
  store i32* %21, i32** %23, align 8
  %24 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %25 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %24, i32 0, i32 26
  %26 = call i32 @list_init(i32* %25)
  %27 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %28 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %27, i32 0, i32 25
  %29 = call i32 @list_init(i32* %28)
  %30 = load i32, i32* @ActionNone, align 4
  %31 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %32 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %31, i32 0, i32 24
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strdupA(i8* %33)
  %35 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %36 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %35, i32 0, i32 23
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %38 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %37, i32 0, i32 23
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %16
  br label %213

42:                                               ; preds = %16
  %43 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %44 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %45 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %44, i32 0, i32 22
  %46 = call i32 @section_get_str(%struct.inf_section* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %45, i8* null)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %213

49:                                               ; preds = %42
  %50 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %51 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %52 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %51, i32 0, i32 21
  %53 = call i32 @section_get_str(%struct.inf_section* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %52, i8* null)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  br label %213

56:                                               ; preds = %49
  %57 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %58 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %59 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %58, i32 0, i32 20
  %60 = call i32 @section_get_str(%struct.inf_section* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %59, i8* null)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %213

63:                                               ; preds = %56
  %64 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %65 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %66 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %65, i32 0, i32 19
  %67 = call i32 @section_get_str(%struct.inf_section* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %66, i8* null)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  br label %213

70:                                               ; preds = %63
  %71 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %72 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %73 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %72, i32 0, i32 18
  %74 = call i32 @section_get_str(%struct.inf_section* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %213

77:                                               ; preds = %70
  %78 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %79 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %80 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %79, i32 0, i32 17
  %81 = call i32 @section_get_str(%struct.inf_section* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32* %80, i8* null)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %213

84:                                               ; preds = %77
  %85 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %86 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %87 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %86, i32 0, i32 16
  %88 = call i32 @section_get_dword_field(%struct.inf_section* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 1, i32* %87, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %213

91:                                               ; preds = %84
  %92 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %93 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %94 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %93, i32 0, i32 15
  %95 = call i32 @section_get_dword_field(%struct.inf_section* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 2, i32* %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %213

98:                                               ; preds = %91
  %99 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %100 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %101 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %100, i32 0, i32 14
  %102 = call i32 @section_get_dword_field(%struct.inf_section* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 1, i32* %101, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %213

105:                                              ; preds = %98
  %106 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %107 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %108 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %107, i32 0, i32 13
  %109 = call i32 @section_get_dword_field(%struct.inf_section* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 2, i32* %108, i32 0)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %213

112:                                              ; preds = %105
  %113 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %114 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %115 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %114, i32 0, i32 12
  %116 = call i32 @section_get_str(%struct.inf_section* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* %115, i8* null)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %213

119:                                              ; preds = %112
  %120 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %121 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %122 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %121, i32 0, i32 11
  %123 = call i32 @section_get_str(%struct.inf_section* %120, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32* %122, i8* null)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  br label %213

126:                                              ; preds = %119
  %127 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %128 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %129 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %128, i32 0, i32 10
  %130 = call i32 @section_get_str(%struct.inf_section* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %129, i8* null)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %213

133:                                              ; preds = %126
  %134 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %135 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %136 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %135, i32 0, i32 9
  %137 = call i32 @section_get_str(%struct.inf_section* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32* %136, i8* null)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  br label %213

140:                                              ; preds = %133
  %141 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %142 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %143 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %142, i32 0, i32 8
  %144 = call i32 @section_get_dword(%struct.inf_section* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %143, i32 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  br label %213

147:                                              ; preds = %140
  %148 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %149 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %150 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %149, i32 0, i32 7
  %151 = call i32 @section_get_dword(%struct.inf_section* %148, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32* %150, i32 0)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %213

154:                                              ; preds = %147
  %155 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %156 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %157 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %156, i32 0, i32 6
  %158 = call i32 @section_get_dword(%struct.inf_section* %155, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* %157, i32 1)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  br label %213

161:                                              ; preds = %154
  %162 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %163 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %164 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %163, i32 0, i32 5
  %165 = call i32 @section_get_dword(%struct.inf_section* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32* %164, i32 0)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %161
  br label %213

168:                                              ; preds = %161
  %169 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %170 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %171 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %170, i32 0, i32 0
  %172 = call i32 @section_get_dword(%struct.inf_section* %169, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32* %171, i32 0)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %168
  br label %213

175:                                              ; preds = %168
  %176 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %177 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %178 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %177, i32 0, i32 4
  %179 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %180 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %179, i32 0, i32 3
  %181 = call i32 @read_version_entry(%struct.inf_section* %176, i32* %178, i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %175
  br label %213

184:                                              ; preds = %175
  %185 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %186 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %187 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %186, i32 0, i32 2
  %188 = call i32 @read_platform_entry(%struct.inf_section* %185, i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %184
  br label %213

191:                                              ; preds = %184
  %192 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %193 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %194 = call i32 @read_urls(%struct.cifcomponent* %192, %struct.inf_section* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %213

197:                                              ; preds = %191
  %198 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %199 = load %struct.inf_section*, %struct.inf_section** %6, align 8
  %200 = call i32 @read_dependencies(%struct.cifcomponent* %198, %struct.inf_section* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  br label %213

203:                                              ; preds = %197
  %204 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %205 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %208 = getelementptr inbounds %struct.cifcomponent, %struct.cifcomponent* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load %struct.ciffile*, %struct.ciffile** %5, align 8
  %210 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %211 = call i32 @add_component_by_priority(%struct.ciffile* %209, %struct.cifcomponent* %210)
  %212 = load i32, i32* @S_OK, align 4
  store i32 %212, i32* %4, align 4
  br label %217

213:                                              ; preds = %202, %196, %190, %183, %174, %167, %160, %153, %146, %139, %132, %125, %118, %111, %104, %97, %90, %83, %76, %69, %62, %55, %48, %41
  %214 = load %struct.cifcomponent*, %struct.cifcomponent** %8, align 8
  %215 = call i32 @component_free(%struct.cifcomponent* %214)
  %216 = load i32, i32* %9, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %213, %203, %14
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local %struct.cifcomponent* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @strdupA(i8*) #1

declare dso_local i32 @section_get_str(%struct.inf_section*, i8*, i32*, i8*) #1

declare dso_local i32 @section_get_dword_field(%struct.inf_section*, i8*, i32, i32*, i32) #1

declare dso_local i32 @section_get_dword(%struct.inf_section*, i8*, i32*, i32) #1

declare dso_local i32 @read_version_entry(%struct.inf_section*, i32*, i32*) #1

declare dso_local i32 @read_platform_entry(%struct.inf_section*, i32*) #1

declare dso_local i32 @read_urls(%struct.cifcomponent*, %struct.inf_section*) #1

declare dso_local i32 @read_dependencies(%struct.cifcomponent*, %struct.inf_section*) #1

declare dso_local i32 @add_component_by_priority(%struct.ciffile*, %struct.cifcomponent*) #1

declare dso_local i32 @component_free(%struct.cifcomponent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
