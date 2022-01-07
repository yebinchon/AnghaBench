; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_get_encoder_from_prefix.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_get_encoder_from_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_encoder_from_prefix(i32 %0, %struct.TYPE_7__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @parse_namespace(i32* %11, i8** %10, i8** %9)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @BAD_CAST(i8* %17)
  %19 = call %struct.TYPE_6__* @xmlSearchNs(i32 %15, %struct.TYPE_7__* %16, i32 %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %8, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i8*, i8** %10, align 8
  %29 = call i32* @get_encoder(i32 %23, i8* %27, i8* %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32* @get_encoder_ex(i32 %33, i8* %34, i32 %36)
  store i32* %37, i32** %7, align 8
  br label %38

38:                                               ; preds = %32, %22
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %4, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @xmlStrlen(i32* %43)
  %45 = call i32* @get_encoder_ex(i32 %40, i8* %42, i32 %44)
  store i32* %45, i32** %7, align 8
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @efree(i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @efree(i8* %52)
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32*, i32** %7, align 8
  ret i32* %55
}

declare dso_local i32 @parse_namespace(i32*, i8**, i8**) #1

declare dso_local %struct.TYPE_6__* @xmlSearchNs(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @BAD_CAST(i8*) #1

declare dso_local i32* @get_encoder(i32, i8*, i8*) #1

declare dso_local i32* @get_encoder_ex(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xmlStrlen(i32*) #1

declare dso_local i32 @efree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
