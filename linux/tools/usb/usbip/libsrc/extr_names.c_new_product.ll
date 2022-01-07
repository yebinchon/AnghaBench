; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_new_product.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_new_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.product = type { i32, i32, %struct.product*, i32 }

@products = common dso_local global %struct.product** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @new_product to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_product(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.product*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @hashnum(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.product**, %struct.product*** @products, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.product*, %struct.product** %15, i64 %17
  %19 = load %struct.product*, %struct.product** %18, align 8
  store %struct.product* %19, %struct.product** %8, align 8
  br label %20

20:                                               ; preds = %37, %3
  %21 = load %struct.product*, %struct.product** %8, align 8
  %22 = icmp ne %struct.product* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.product*, %struct.product** %8, align 8
  %25 = getelementptr inbounds %struct.product, %struct.product* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.product*, %struct.product** %8, align 8
  %31 = getelementptr inbounds %struct.product, %struct.product* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %73

36:                                               ; preds = %29, %23
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.product*, %struct.product** %8, align 8
  %39 = getelementptr inbounds %struct.product, %struct.product* %38, i32 0, i32 2
  %40 = load %struct.product*, %struct.product** %39, align 8
  store %struct.product* %40, %struct.product** %8, align 8
  br label %20

41:                                               ; preds = %20
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add i64 24, %43
  %45 = call %struct.product* @my_malloc(i64 %44)
  store %struct.product* %45, %struct.product** %8, align 8
  %46 = load %struct.product*, %struct.product** %8, align 8
  %47 = icmp ne %struct.product* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %73

49:                                               ; preds = %41
  %50 = load %struct.product*, %struct.product** %8, align 8
  %51 = getelementptr inbounds %struct.product, %struct.product* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strcpy(i32 %52, i8* %53)
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.product*, %struct.product** %8, align 8
  %57 = getelementptr inbounds %struct.product, %struct.product* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.product*, %struct.product** %8, align 8
  %60 = getelementptr inbounds %struct.product, %struct.product* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.product**, %struct.product*** @products, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.product*, %struct.product** %61, i64 %63
  %65 = load %struct.product*, %struct.product** %64, align 8
  %66 = load %struct.product*, %struct.product** %8, align 8
  %67 = getelementptr inbounds %struct.product, %struct.product* %66, i32 0, i32 2
  store %struct.product* %65, %struct.product** %67, align 8
  %68 = load %struct.product*, %struct.product** %8, align 8
  %69 = load %struct.product**, %struct.product*** @products, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.product*, %struct.product** %69, i64 %71
  store %struct.product* %68, %struct.product** %72, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %49, %48, %35
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @hashnum(i32) #1

declare dso_local %struct.product* @my_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
