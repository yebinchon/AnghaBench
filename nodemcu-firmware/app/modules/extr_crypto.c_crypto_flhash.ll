; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_flhash.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_flhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@vfs_read_wrap = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @crypto_flhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_flhash(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i8* @luaL_checkstring(i32* %11, i32 1)
  %13 = call %struct.TYPE_4__* @crypto_digest_mech(i8* %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @bad_mech(i32* %17)
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @luaL_checkstring(i32* %20, i32 2)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @vfs_open(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @bad_file(i32* %27)
  store i32 %28, i32* %2, align 4
  br label %63

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %7, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %8, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @crypto_fhash(%struct.TYPE_4__* %36, i32* @vfs_read_wrap, i32 %37, i32* %35)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @vfs_close(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @bad_mem(i32* %45)
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %61

47:                                               ; preds = %29
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @EINVAL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @bad_mech(i32* %52)
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %61

54:                                               ; preds = %47
  %55 = load i32*, i32** %3, align 8
  %56 = mul nuw i64 4, %33
  %57 = trunc i64 %56 to i32
  %58 = call i32 @lua_pushlstring(i32* %55, i32* %35, i32 %57)
  br label %59

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %51, %44
  %62 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %62)
  br label %63

63:                                               ; preds = %61, %26, %16
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @crypto_digest_mech(i8*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @bad_mech(i32*) #1

declare dso_local i32 @vfs_open(i8*, i8*) #1

declare dso_local i32 @bad_file(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_fhash(%struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i32 @vfs_close(i32) #1

declare dso_local i32 @bad_mem(i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
