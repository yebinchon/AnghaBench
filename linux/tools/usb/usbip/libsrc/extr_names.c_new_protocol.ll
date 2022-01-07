; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_new_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_names.c_new_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { i32, i32, i32, %struct.protocol*, i32 }

@protocols = common dso_local global %struct.protocol** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @new_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_protocol(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.protocol*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = shl i32 %12, 16
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %13, %15
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @hashnum(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.protocol**, %struct.protocol*** @protocols, align 8
  %21 = load i32, i32* %11, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.protocol*, %struct.protocol** %20, i64 %22
  %24 = load %struct.protocol*, %struct.protocol** %23, align 8
  store %struct.protocol* %24, %struct.protocol** %10, align 8
  br label %25

25:                                               ; preds = %48, %4
  %26 = load %struct.protocol*, %struct.protocol** %10, align 8
  %27 = icmp ne %struct.protocol* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %25
  %29 = load %struct.protocol*, %struct.protocol** %10, align 8
  %30 = getelementptr inbounds %struct.protocol, %struct.protocol* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.protocol*, %struct.protocol** %10, align 8
  %36 = getelementptr inbounds %struct.protocol, %struct.protocol* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.protocol*, %struct.protocol** %10, align 8
  %42 = getelementptr inbounds %struct.protocol, %struct.protocol* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %87

47:                                               ; preds = %40, %34, %28
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.protocol*, %struct.protocol** %10, align 8
  %50 = getelementptr inbounds %struct.protocol, %struct.protocol* %49, i32 0, i32 3
  %51 = load %struct.protocol*, %struct.protocol** %50, align 8
  store %struct.protocol* %51, %struct.protocol** %10, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = add i64 32, %54
  %56 = call %struct.protocol* @my_malloc(i64 %55)
  store %struct.protocol* %56, %struct.protocol** %10, align 8
  %57 = load %struct.protocol*, %struct.protocol** %10, align 8
  %58 = icmp ne %struct.protocol* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store i32 -1, i32* %5, align 4
  br label %87

60:                                               ; preds = %52
  %61 = load %struct.protocol*, %struct.protocol** %10, align 8
  %62 = getelementptr inbounds %struct.protocol, %struct.protocol* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strcpy(i32 %63, i8* %64)
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.protocol*, %struct.protocol** %10, align 8
  %68 = getelementptr inbounds %struct.protocol, %struct.protocol* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.protocol*, %struct.protocol** %10, align 8
  %71 = getelementptr inbounds %struct.protocol, %struct.protocol* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.protocol*, %struct.protocol** %10, align 8
  %74 = getelementptr inbounds %struct.protocol, %struct.protocol* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.protocol**, %struct.protocol*** @protocols, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.protocol*, %struct.protocol** %75, i64 %77
  %79 = load %struct.protocol*, %struct.protocol** %78, align 8
  %80 = load %struct.protocol*, %struct.protocol** %10, align 8
  %81 = getelementptr inbounds %struct.protocol, %struct.protocol* %80, i32 0, i32 3
  store %struct.protocol* %79, %struct.protocol** %81, align 8
  %82 = load %struct.protocol*, %struct.protocol** %10, align 8
  %83 = load %struct.protocol**, %struct.protocol*** @protocols, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.protocol*, %struct.protocol** %83, i64 %85
  store %struct.protocol* %82, %struct.protocol** %86, align 8
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %60, %59, %46
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @hashnum(i32) #1

declare dso_local %struct.protocol* @my_malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
