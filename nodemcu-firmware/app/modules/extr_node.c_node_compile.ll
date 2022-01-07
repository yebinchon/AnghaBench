; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_compile.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_node.c_node_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FS_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"filename invalid\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".lua\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"not a .lua file\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"cannot open/write to file\00", align 1
@writer = common dso_local global i32 0, align 4
@VFS_RES_OK = common dso_local global i64 0, align 8
@LUA_ERR_CC_INTOVERFLOW = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"value too big or small for target integer type\00", align 1
@LUA_ERR_CC_NOTINTEGER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [57 x i8] c"target lua_Number is integral but fractional value found\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"writing to file failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @node_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_compile(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i8* @luaL_checklstring(i32* %12, i32 1, i64* %6)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @vfs_basename(i8* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i32, i32* @FS_OBJ_NAME_LEN, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %21, %1
  %28 = phi i1 [ false, %1 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @luaL_argcheck(i32* %16, i32 %29, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  %34 = call i8* @luaM_malloc(i32* %31, i64 %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @strcpy(i8* %35, i8* %36)
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %47, label %40

40:                                               ; preds = %27
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 -4
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40, %27
  %48 = load i32*, i32** %3, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @luaM_free(i32* %48, i8* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @luaL_error(i32* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %2, align 4
  br label %135

53:                                               ; preds = %40
  %54 = load i8*, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = sub nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  store i8 99, i8* %59, align 1
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @NODE_DBG(i8* %66)
  %68 = call i32 @NODE_DBG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32*, i32** %3, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @luaL_loadfsfile(i32* %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %53
  %74 = load i32*, i32** %3, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @luaM_free(i32* %74, i8* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = call i8* @lua_tostring(i32* %78, i32 -1)
  %80 = call i32 @luaL_error(i32* %77, i8* %79)
  store i32 %80, i32* %2, align 4
  br label %135

81:                                               ; preds = %53
  %82 = load i32*, i32** %3, align 8
  %83 = call i32* @toproto(i32* %82, i32 -1)
  store i32* %83, i32** %4, align 8
  store i32 1, i32* %10, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @vfs_open(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load i32*, i32** %3, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @luaM_free(i32* %89, i8* %90)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @luaL_error(i32* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 %93, i32* %2, align 4
  br label %135

94:                                               ; preds = %81
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @lua_lock(i32* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* @writer, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @luaU_dump(i32* %97, i32* %98, i32 %99, i32* %5, i32 %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @lua_unlock(i32* %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @vfs_flush(i32 %104)
  %106 = load i64, i64* @VFS_RES_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  store i32 1, i32* %11, align 4
  br label %109

109:                                              ; preds = %108, %94
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @vfs_close(i32 %110)
  store i32 0, i32* %5, align 4
  %112 = load i32*, i32** %3, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @luaM_free(i32* %112, i8* %113)
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @LUA_ERR_CC_INTOVERFLOW, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @luaL_error(i32* %119, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  store i32 %120, i32* %2, align 4
  br label %135

121:                                              ; preds = %109
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @LUA_ERR_CC_NOTINTEGER, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @luaL_error(i32* %126, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  store i32 %127, i32* %2, align 4
  br label %135

128:                                              ; preds = %121
  %129 = load i32, i32* %11, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @luaL_error(i32* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %131, %125, %118, %88, %73, %47
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @vfs_basename(i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @luaM_malloc(i32*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @luaM_free(i32*, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @NODE_DBG(i8*) #1

declare dso_local i64 @luaL_loadfsfile(i32*, i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32* @toproto(i32*, i32) #1

declare dso_local i32 @vfs_open(i8*, i8*) #1

declare dso_local i32 @lua_lock(i32*) #1

declare dso_local i32 @luaU_dump(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @lua_unlock(i32*) #1

declare dso_local i64 @vfs_flush(i32) #1

declare dso_local i32 @vfs_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
