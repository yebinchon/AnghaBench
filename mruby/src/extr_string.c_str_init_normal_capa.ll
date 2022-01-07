; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_normal_capa.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_str_init_normal_capa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RString* (i32*, %struct.RString*, i8*, i64, i64)* @str_init_normal_capa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RString* @str_init_normal_capa(i32* %0, %struct.RString* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.RString*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.RString* %1, %struct.RString** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i64, i64* %10, align 8
  %14 = add i64 %13, 1
  %15 = call i64 @mrb_malloc(i32* %12, i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  br label %24

24:                                               ; preds = %19, %5
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.RString*, %struct.RString** %7, align 8
  %30 = getelementptr inbounds %struct.RString, %struct.RString* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.RString*, %struct.RString** %7, align 8
  %36 = getelementptr inbounds %struct.RString, %struct.RString* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i8* %34, i8** %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.RString*, %struct.RString** %7, align 8
  %42 = getelementptr inbounds %struct.RString, %struct.RString* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i8* %40, i8** %45, align 8
  %46 = load %struct.RString*, %struct.RString** %7, align 8
  %47 = call i32 @RSTR_UNSET_TYPE_FLAG(%struct.RString* %46)
  %48 = load %struct.RString*, %struct.RString** %7, align 8
  ret %struct.RString* %48
}

declare dso_local i64 @mrb_malloc(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @RSTR_UNSET_TYPE_FLAG(%struct.RString*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
