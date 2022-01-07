; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_rename.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FS_OBJ_NAME_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"filename invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @file_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_rename(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
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
  %26 = call i8* @luaL_checklstring(i32* %25, i32 2, i64* %3)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @vfs_basename(i8* %27)
  store i8* %28, i8** %5, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = load i64, i64* @FS_OBJ_NAME_LEN, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = load i64, i64* %3, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %34, %21
  %40 = phi i1 [ false, %21 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @luaL_argcheck(i32* %29, i32 %41, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @vfs_rename(i8* %43, i8* %44)
  %46 = icmp sle i64 0, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @lua_pushboolean(i32* %48, i32 1)
  br label %53

50:                                               ; preds = %39
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_pushboolean(i32* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %47
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @vfs_basename(i8*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @vfs_rename(i8*, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
