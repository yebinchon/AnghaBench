; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_exists.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_stat = type { i32 }

@FS_OBJ_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"filename invalid\00", align 1
@VFS_RES_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_exists(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfs_stat, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @luaL_checklstring(i32* %7, i32 1, i64* %3)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @vfs_basename(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = load i64, i64* @FS_OBJ_NAME_LEN, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ false, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @luaL_argcheck(i32* %11, i32 %23, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %2, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @vfs_stat(i8* %26, %struct.vfs_stat* %6)
  %28 = load i64, i64* @VFS_RES_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = call i32 @lua_pushboolean(i32* %25, i32 %31)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @vfs_basename(i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i64 @vfs_stat(i8*, %struct.vfs_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
