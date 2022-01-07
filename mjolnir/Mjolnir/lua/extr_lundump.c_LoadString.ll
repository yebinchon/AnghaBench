; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lundump.c_LoadString.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lundump.c_LoadString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@LUAI_MAXSHORTLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @LoadString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @LoadString(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i64 @LoadByte(%struct.TYPE_6__* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 255
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @LoadVar(%struct.TYPE_6__* %13, i64 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  br label %50

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i64, i64* @LUAI_MAXSHORTLEN, align 8
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %5, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @LoadVector(%struct.TYPE_6__* %29, i8* %28, i64 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32* @luaS_newlstr(i32 %34, i8* %28, i64 %35)
  store i32* %36, i32** %2, align 8
  %37 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %37)
  br label %50

38:                                               ; preds = %20
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %4, align 8
  %43 = call i32* @luaS_createlngstrobj(i32 %41, i64 %42)
  store i32* %43, i32** %7, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i8* @getstr(i32* %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @LoadVector(%struct.TYPE_6__* %44, i8* %46, i64 %47)
  %49 = load i32*, i32** %7, align 8
  store i32* %49, i32** %2, align 8
  br label %50

50:                                               ; preds = %38, %25, %19
  %51 = load i32*, i32** %2, align 8
  ret i32* %51
}

declare dso_local i64 @LoadByte(%struct.TYPE_6__*) #1

declare dso_local i32 @LoadVar(%struct.TYPE_6__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadVector(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32* @luaS_newlstr(i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @luaS_createlngstrobj(i32, i64) #1

declare dso_local i8* @getstr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
