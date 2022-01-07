; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_subclass.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_names_subclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subclass = type { i32, i32, i8*, %struct.subclass* }

@subclasses = common dso_local global %struct.subclass** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @names_subclass(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.subclass*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.subclass**, %struct.subclass*** @subclasses, align 8
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 8
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @hashnum(i32 %11)
  %13 = getelementptr inbounds %struct.subclass*, %struct.subclass** %7, i64 %12
  %14 = load %struct.subclass*, %struct.subclass** %13, align 8
  store %struct.subclass* %14, %struct.subclass** %6, align 8
  br label %15

15:                                               ; preds = %35, %2
  %16 = load %struct.subclass*, %struct.subclass** %6, align 8
  %17 = icmp ne %struct.subclass* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.subclass*, %struct.subclass** %6, align 8
  %20 = getelementptr inbounds %struct.subclass, %struct.subclass* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.subclass*, %struct.subclass** %6, align 8
  %26 = getelementptr inbounds %struct.subclass, %struct.subclass* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.subclass*, %struct.subclass** %6, align 8
  %32 = getelementptr inbounds %struct.subclass, %struct.subclass* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  br label %40

34:                                               ; preds = %24, %18
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.subclass*, %struct.subclass** %6, align 8
  %37 = getelementptr inbounds %struct.subclass, %struct.subclass* %36, i32 0, i32 3
  %38 = load %struct.subclass*, %struct.subclass** %37, align 8
  store %struct.subclass* %38, %struct.subclass** %6, align 8
  br label %15

39:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i64 @hashnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
