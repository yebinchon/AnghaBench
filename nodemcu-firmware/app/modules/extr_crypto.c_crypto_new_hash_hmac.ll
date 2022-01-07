; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_new_hash_hmac.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_new_hash_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 (i8*)* }
%struct.TYPE_5__ = type { i8*, i8*, %struct.TYPE_6__* }

@WANT_HMAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"crypto.hash\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @crypto_new_hash_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_new_hash_hmac(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @luaL_checkstring(i32* %14, i32 1)
  %16 = call %struct.TYPE_6__* @crypto_digest_mech(i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @bad_mech(i32* %20)
  store i32 %21, i32* %3, align 4
  br label %82

22:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @WANT_HMAC, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = call i8* @luaL_checklstring(i32* %27, i32 2, i64* %7)
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add i64 24, %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  store i64 %39, i64* %9, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @lua_newuserdata(i32* %40, i64 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %12, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @luaL_getmetatable(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @lua_setmetatable(i32* %46, i32 -2)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 1
  %50 = bitcast %struct.TYPE_5__* %49 to i8*
  store i8* %50, i8** %13, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32 (i8*)*, i32 (i8*)** %52, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 %53(i8* %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @WANT_HMAC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %32
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @crypto_hmac_begin(i8* %66, %struct.TYPE_6__* %67, i8* %68, i64 %69, i8* %70)
  br label %72

72:                                               ; preds = %59, %32
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store %struct.TYPE_6__* %73, %struct.TYPE_6__** %75, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  store i32 1, i32* %3, align 4
  br label %82

82:                                               ; preds = %72, %19
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_6__* @crypto_digest_mech(i32) #1

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @bad_mech(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @luaL_getmetatable(i32*, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @crypto_hmac_begin(i8*, %struct.TYPE_6__*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
