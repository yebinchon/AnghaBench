; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_info.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sw_version\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"build_config\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"chip_id\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"flash_id\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"flash_size\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"flash_mode\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"flash_speed\00", align 1
@NODE_VERSION_MAJOR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"node_version_major\00", align 1
@NODE_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"node_version_minor\00", align 1
@NODE_VERSION_REVISION = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"node_version_revision\00", align 1
@BUILDINFO_BRANCH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"git_branch\00", align 1
@BUILDINFO_COMMIT_ID = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"git_commit_id\00", align 1
@BUILDINFO_RELEASE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"git_release\00", align 1
@BUILDINFO_RELEASE_DTS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"git_commit_dts\00", align 1
@BUILDINFO_SSL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@BUILDINFO_LFS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [9 x i8] c"lfs_size\00", align 1
@BUILDINFO_MODULES = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@BUILDINFO_BUILD_TYPE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"number_type\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"node.info() without parameter\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"in the next version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @node_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_info(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [5 x i8*], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = bitcast [5 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false)
  %10 = bitcast i8* %9 to [5 x i8*]*
  %11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %12, align 8
  %13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 2
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8** %13, align 16
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %10, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 3
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %4, i64 0, i64 0
  %19 = call i32 @luaL_checkoption(i32* %15, i32 1, i8* %17, i8** %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %133 [
    i32 0, label %21
    i32 1, label %57
    i32 2, label %104
  ]

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @lua_createtable(i32* %22, i32 0, i32 5)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_gettop(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 (...) @system_get_chip_id()
  %28 = call i32 @lua_pushinteger(i32* %26, i32 %27)
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @lua_setfield(i32* %29, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 (...) @spi_flash_get_id()
  %34 = call i32 @lua_pushinteger(i32* %32, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @lua_setfield(i32* %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 (...) @flash_rom_get_size_byte()
  %40 = sdiv i32 %39, 1024
  %41 = call i32 @lua_pushinteger(i32* %38, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @lua_setfield(i32* %42, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 (...) @flash_rom_get_mode()
  %47 = call i32 @lua_pushinteger(i32* %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @lua_setfield(i32* %48, i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 (...) @flash_rom_get_speed()
  %53 = call i32 @lua_pushinteger(i32* %51, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @lua_setfield(i32* %54, i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %160

57:                                               ; preds = %1
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_createtable(i32* %58, i32 0, i32 7)
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_gettop(i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @NODE_VERSION_MAJOR, align 4
  %64 = call i32 @lua_pushinteger(i32* %62, i32 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @lua_setfield(i32* %65, i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @NODE_VERSION_MINOR, align 4
  %70 = call i32 @lua_pushinteger(i32* %68, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @lua_setfield(i32* %71, i32 %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* @NODE_VERSION_REVISION, align 4
  %76 = call i32 @lua_pushinteger(i32* %74, i32 %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @lua_setfield(i32* %77, i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* @BUILDINFO_BRANCH, align 4
  %82 = call i32 @lua_pushstring(i32* %80, i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @lua_setfield(i32* %83, i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @BUILDINFO_COMMIT_ID, align 4
  %88 = call i32 @lua_pushstring(i32* %86, i32 %87)
  %89 = load i32*, i32** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @lua_setfield(i32* %89, i32 %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* @BUILDINFO_RELEASE, align 4
  %94 = call i32 @lua_pushstring(i32* %92, i32 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @lua_setfield(i32* %95, i32 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* @BUILDINFO_RELEASE_DTS, align 4
  %100 = call i32 @lua_pushstring(i32* %98, i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @lua_setfield(i32* %101, i32 %102, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %160

104:                                              ; preds = %1
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @lua_createtable(i32* %105, i32 0, i32 4)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @lua_gettop(i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* @BUILDINFO_SSL, align 4
  %111 = call i32 @lua_pushboolean(i32* %109, i32 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @lua_setfield(i32* %112, i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %115 = load i32*, i32** %3, align 8
  %116 = load i32, i32* @BUILDINFO_LFS, align 4
  %117 = call i32 @lua_pushnumber(i32* %115, i32 %116)
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @lua_setfield(i32* %118, i32 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* @BUILDINFO_MODULES, align 4
  %123 = call i32 @lua_pushstring(i32* %121, i32 %122)
  %124 = load i32*, i32** %3, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @lua_setfield(i32* %124, i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* @BUILDINFO_BUILD_TYPE, align 4
  %129 = call i32 @lua_pushstring(i32* %127, i32 %128)
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @lua_setfield(i32* %130, i32 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %160

133:                                              ; preds = %1
  %134 = call i32 @platform_print_deprecation_note(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  %135 = load i32*, i32** %3, align 8
  %136 = load i32, i32* @NODE_VERSION_MAJOR, align 4
  %137 = call i32 @lua_pushinteger(i32* %135, i32 %136)
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* @NODE_VERSION_MINOR, align 4
  %140 = call i32 @lua_pushinteger(i32* %138, i32 %139)
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* @NODE_VERSION_REVISION, align 4
  %143 = call i32 @lua_pushinteger(i32* %141, i32 %142)
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 (...) @system_get_chip_id()
  %146 = call i32 @lua_pushinteger(i32* %144, i32 %145)
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 (...) @spi_flash_get_id()
  %149 = call i32 @lua_pushinteger(i32* %147, i32 %148)
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 (...) @flash_rom_get_size_byte()
  %152 = sdiv i32 %151, 1024
  %153 = call i32 @lua_pushinteger(i32* %150, i32 %152)
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 (...) @flash_rom_get_mode()
  %156 = call i32 @lua_pushinteger(i32* %154, i32 %155)
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 (...) @flash_rom_get_speed()
  %159 = call i32 @lua_pushinteger(i32* %157, i32 %158)
  store i32 8, i32* %2, align 4
  br label %160

160:                                              ; preds = %133, %104, %57, %21
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #2

declare dso_local i32 @lua_createtable(i32*, i32, i32) #2

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i32 @lua_pushinteger(i32*, i32) #2

declare dso_local i32 @system_get_chip_id(...) #2

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #2

declare dso_local i32 @spi_flash_get_id(...) #2

declare dso_local i32 @flash_rom_get_size_byte(...) #2

declare dso_local i32 @flash_rom_get_mode(...) #2

declare dso_local i32 @flash_rom_get_speed(...) #2

declare dso_local i32 @lua_pushstring(i32*, i32) #2

declare dso_local i32 @lua_pushboolean(i32*, i32) #2

declare dso_local i32 @lua_pushnumber(i32*, i32) #2

declare dso_local i32 @platform_print_deprecation_note(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
