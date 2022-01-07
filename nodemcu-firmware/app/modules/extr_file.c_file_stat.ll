; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_stat.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_stat = type { %struct.TYPE_2__, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@FS_OBJ_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"filename invalid\00", align 1
@VFS_RES_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"is_dir\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"is_rdonly\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"is_hidden\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"is_sys\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"is_arch\00", align 1
@FILE_TIMEDEF_YEAR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@FILE_TIMEDEF_MON = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@FILE_TIMEDEF_DAY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@FILE_TIMEDEF_HOUR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@FILE_TIMEDEF_MIN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@FILE_TIMEDEF_SEC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_stat(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfs_stat, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i8* @luaL_checklstring(i32* %7, i32 1, i64* %4)
  store i8* %8, i8** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = load i64, i64* @FS_OBJ_NAME_LEN, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @luaL_argcheck(i32* %9, i32 %21, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @vfs_stat(i8* %23, %struct.vfs_stat* %6)
  %25 = load i64, i64* @VFS_RES_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_pushnil(i32* %28)
  store i32 1, i32* %2, align 4
  br label %169

30:                                               ; preds = %19
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_createtable(i32* %31, i32 0, i32 7)
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @lua_pushinteger(i32* %33, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_setfield(i32* %37, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @lua_pushstring(i32* %39, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_setfield(i32* %43, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @lua_pushboolean(i32* %45, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_setfield(i32* %49, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32*, i32** %3, align 8
  %52 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lua_pushboolean(i32* %51, i32 %53)
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @lua_setfield(i32* %55, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @lua_pushboolean(i32* %57, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_setfield(i32* %61, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @lua_pushboolean(i32* %63, i32 %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @lua_setfield(i32* %67, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @lua_pushboolean(i32* %69, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_setfield(i32* %73, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @lua_createtable(i32* %75, i32 0, i32 6)
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %30
  %82 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  br label %87

85:                                               ; preds = %30
  %86 = load i32, i32* @FILE_TIMEDEF_YEAR, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ %84, %81 ], [ %86, %85 ]
  %89 = call i32 @lua_pushinteger(i32* %77, i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_setfield(i32* %90, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  br label %102

100:                                              ; preds = %87
  %101 = load i32, i32* @FILE_TIMEDEF_MON, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i32 [ %99, %96 ], [ %101, %100 ]
  %104 = call i32 @lua_pushinteger(i32* %92, i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @lua_setfield(i32* %105, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i32*, i32** %3, align 8
  %108 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  br label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @FILE_TIMEDEF_DAY, align 4
  br label %117

117:                                              ; preds = %115, %111
  %118 = phi i32 [ %114, %111 ], [ %116, %115 ]
  %119 = call i32 @lua_pushinteger(i32* %107, i32 %118)
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @lua_setfield(i32* %120, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  br label %132

130:                                              ; preds = %117
  %131 = load i32, i32* @FILE_TIMEDEF_HOUR, align 4
  br label %132

132:                                              ; preds = %130, %126
  %133 = phi i32 [ %129, %126 ], [ %131, %130 ]
  %134 = call i32 @lua_pushinteger(i32* %122, i32 %133)
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @lua_setfield(i32* %135, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %137 = load i32*, i32** %3, align 8
  %138 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  br label %147

145:                                              ; preds = %132
  %146 = load i32, i32* @FILE_TIMEDEF_MIN, align 4
  br label %147

147:                                              ; preds = %145, %141
  %148 = phi i32 [ %144, %141 ], [ %146, %145 ]
  %149 = call i32 @lua_pushinteger(i32* %137, i32 %148)
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @lua_setfield(i32* %150, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %152 = load i32*, i32** %3, align 8
  %153 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.vfs_stat, %struct.vfs_stat* %6, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  br label %162

160:                                              ; preds = %147
  %161 = load i32, i32* @FILE_TIMEDEF_SEC, align 4
  br label %162

162:                                              ; preds = %160, %156
  %163 = phi i32 [ %159, %156 ], [ %161, %160 ]
  %164 = call i32 @lua_pushinteger(i32* %152, i32 %163)
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @lua_setfield(i32* %165, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @lua_setfield(i32* %167, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %169

169:                                              ; preds = %162, %27
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @vfs_stat(i8*, %struct.vfs_stat*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
