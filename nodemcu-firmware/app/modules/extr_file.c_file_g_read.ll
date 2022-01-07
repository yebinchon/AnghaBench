; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_g_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_file.c_file_g_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUAL_BUFFERSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"open a file first\00", align 1
@VFS_RES_ERR = common dso_local global i32 0, align 4
@VFS_SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8, i32)* @file_g_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_g_read(i32* %0, i32 %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @LUAL_BUFFERSIZE, align 4
  %19 = sdiv i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %109

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @luaL_buffinit(i32* %29, i32* %12)
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %102, %28
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %107

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, %20
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %47

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  br label %47

47:                                               ; preds = %42, %41
  %48 = phi i64 [ %20, %41 ], [ %46, %42 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @vfs_read(i32 %50, i8* %22, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @VFS_RES_ERR, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %17, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %47
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @lua_pushnil(i32* %60)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %109

62:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %93, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %22, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i32 @luaL_addchar(i32* %12, i8 signext %71)
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %22, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* %8, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %67
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 0, %83
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* @VFS_SEEK_CUR, align 4
  %91 = call i32 @vfs_lseek(i32 %82, i32 %89, i32 %90)
  store i32 0, i32* %17, align 4
  br label %96

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %63

96:                                               ; preds = %81, %63
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %107

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %20
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  br label %31

107:                                              ; preds = %100, %31
  %108 = call i32 @luaL_pushresult(i32* %12)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %107, %59, %25
  %110 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @luaL_error(i32*, i8*) #2

declare dso_local i32 @luaL_buffinit(i32*, i32*) #2

declare dso_local i32 @vfs_read(i32, i8*, i32) #2

declare dso_local i32 @lua_pushnil(i32*) #2

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #2

declare dso_local i32 @vfs_lseek(i32, i32, i32) #2

declare dso_local i32 @luaL_pushresult(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
