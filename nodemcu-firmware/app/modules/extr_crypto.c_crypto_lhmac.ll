; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_lhmac.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_crypto.c_crypto_lhmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @crypto_lhmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_lhmac(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_checkstring(i32* %12, i32 1)
  %14 = call %struct.TYPE_4__* @crypto_digest_mech(i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @bad_mech(i32* %18)
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i8* @luaL_checklstring(i32* %21, i32 2, i64* %5)
  store i8* %22, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @luaL_checklstring(i32* %23, i32 3, i64* %7)
  store i8* %24, i8** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @crypto_hmac(%struct.TYPE_4__* %31, i8* %32, i64 %33, i8* %34, i64 %35, i32* %30)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @bad_mem(i32* %39)
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %46

41:                                               ; preds = %20
  %42 = load i32*, i32** %3, align 8
  %43 = mul nuw i64 4, %28
  %44 = trunc i64 %43 to i32
  %45 = call i32 @lua_pushlstring(i32* %42, i32* %30, i32 %44)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %47)
  br label %48

48:                                               ; preds = %46, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_4__* @crypto_digest_mech(i32) #1

declare dso_local i32 @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @bad_mech(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @crypto_hmac(%struct.TYPE_4__*, i8*, i64, i8*, i64, i32*) #1

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
