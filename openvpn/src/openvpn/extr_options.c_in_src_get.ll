; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_in_src_get.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_in_src_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_src = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@IS_TYPE_FP = common dso_local global i64 0, align 8
@IS_TYPE_BUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.in_src*, i8*, i32)* @in_src_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_src_get(%struct.in_src* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.in_src*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.in_src* %0, %struct.in_src** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.in_src*, %struct.in_src** %5, align 8
  %10 = getelementptr inbounds %struct.in_src, %struct.in_src* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @IS_TYPE_FP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.in_src*, %struct.in_src** %5, align 8
  %18 = getelementptr inbounds %struct.in_src, %struct.in_src* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fgets(i8* %15, i32 %16, i32 %20)
  %22 = call i32 @BOOL_CAST(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load %struct.in_src*, %struct.in_src** %5, align 8
  %25 = getelementptr inbounds %struct.in_src, %struct.in_src* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IS_TYPE_BUF, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.in_src*, %struct.in_src** %5, align 8
  %31 = getelementptr inbounds %struct.in_src, %struct.in_src* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @buf_parse(i32 %33, i8 signext 10, i8* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = trunc i64 %38 to i32
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %50

48:                                               ; preds = %23
  %49 = call i32 @ASSERT(i32 0)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %46, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @BOOL_CAST(i32) #1

declare dso_local i32 @fgets(i8*, i32, i32) #1

declare dso_local i32 @buf_parse(i32, i8 signext, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
