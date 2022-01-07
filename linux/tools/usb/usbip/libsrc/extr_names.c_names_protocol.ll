; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { i32, i32, i32, i8*, %struct.protocol* }

@protocols = common dso_local global %struct.protocol** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @names_protocol(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.protocol*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.protocol**, %struct.protocol*** @protocols, align 8
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 8
  %14 = or i32 %11, %13
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @hashnum(i32 %16)
  %18 = getelementptr inbounds %struct.protocol*, %struct.protocol** %9, i64 %17
  %19 = load %struct.protocol*, %struct.protocol** %18, align 8
  store %struct.protocol* %19, %struct.protocol** %8, align 8
  br label %20

20:                                               ; preds = %46, %3
  %21 = load %struct.protocol*, %struct.protocol** %8, align 8
  %22 = icmp ne %struct.protocol* %21, null
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load %struct.protocol*, %struct.protocol** %8, align 8
  %25 = getelementptr inbounds %struct.protocol, %struct.protocol* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.protocol*, %struct.protocol** %8, align 8
  %31 = getelementptr inbounds %struct.protocol, %struct.protocol* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.protocol*, %struct.protocol** %8, align 8
  %37 = getelementptr inbounds %struct.protocol, %struct.protocol* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.protocol*, %struct.protocol** %8, align 8
  %43 = getelementptr inbounds %struct.protocol, %struct.protocol* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %4, align 8
  br label %51

45:                                               ; preds = %35, %29, %23
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.protocol*, %struct.protocol** %8, align 8
  %48 = getelementptr inbounds %struct.protocol, %struct.protocol* %47, i32 0, i32 4
  %49 = load %struct.protocol*, %struct.protocol** %48, align 8
  store %struct.protocol* %49, %struct.protocol** %8, align 8
  br label %20

50:                                               ; preds = %20
  store i8* null, i8** %4, align 8
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local i64 @hashnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
