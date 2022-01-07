; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_confdata.c_kconfig_print_symbol.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_confdata.c_kconfig_print_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"# %s%s is not set\0A\00", align 1
@CONFIG_ = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.symbol*, i8*, i8*)* @kconfig_print_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kconfig_print_symbol(i32* %0, %struct.symbol* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.symbol*, %struct.symbol** %6, align 8
  %11 = getelementptr inbounds %struct.symbol, %struct.symbol* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %33 [
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %4, %4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 110
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** @CONFIG_, align 8
  %27 = load %struct.symbol*, %struct.symbol** %6, align 8
  %28 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %29)
  br label %31

31:                                               ; preds = %24, %18
  br label %42

32:                                               ; preds = %13
  br label %34

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** @CONFIG_, align 8
  %37 = load %struct.symbol*, %struct.symbol** %6, align 8
  %38 = getelementptr inbounds %struct.symbol, %struct.symbol* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %36, i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %34, %31
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
