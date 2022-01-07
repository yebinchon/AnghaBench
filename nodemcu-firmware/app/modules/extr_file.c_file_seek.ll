; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_seek.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GET_FILE_OBJ = common dso_local global i32 0, align 4
@file_seek.mode = internal constant [3 x i32] [i32 128, i32 130, i32 129], align 4
@file_seek.modenames = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cur\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@fd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"open a file first\00", align 1
@argpos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_seek(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @GET_FILE_OBJ, align 4
  %7 = load i32, i32* @fd, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @argpos, align 4
  %15 = call i32 @luaL_checkoption(i32* %13, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @file_seek.modenames, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @argpos, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @argpos, align 4
  %19 = call i64 @luaL_optlong(i32* %16, i32 %18, i32 0)
  store i64 %19, i64* %5, align 8
  %20 = load i32, i32* @fd, align 4
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* @file_seek.mode, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vfs_lseek(i32 %20, i64 %21, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_pushnil(i32* %30)
  br label %37

32:                                               ; preds = %12
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @fd, align 4
  %35 = call i32 @vfs_tell(i32 %34)
  %36 = call i32 @lua_pushinteger(i32* %33, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @luaL_checkoption(i32*, i32, i8*, i8**) #1

declare dso_local i64 @luaL_optlong(i32*, i32, i32) #1

declare dso_local i32 @vfs_lseek(i32, i64, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @vfs_tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
