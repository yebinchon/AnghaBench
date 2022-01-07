; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_select_cert_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_select_cert_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectCertData = type { i32, i32, i32, i32, i32, i64 (i32, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.SelectCertData*)* @select_cert_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_cert_view(i32 %0, i32 %1, %struct.SelectCertData* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.SelectCertData*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.SelectCertData* %2, %struct.SelectCertData** %6, align 8
  %8 = load %struct.SelectCertData*, %struct.SelectCertData** %6, align 8
  %9 = getelementptr inbounds %struct.SelectCertData, %struct.SelectCertData* %8, i32 0, i32 5
  %10 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %9, align 8
  %11 = icmp ne i64 (i32, i32, i32)* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.SelectCertData*, %struct.SelectCertData** %6, align 8
  %14 = getelementptr inbounds %struct.SelectCertData, %struct.SelectCertData* %13, i32 0, i32 5
  %15 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.SelectCertData*, %struct.SelectCertData** %6, align 8
  %19 = getelementptr inbounds %struct.SelectCertData, %struct.SelectCertData* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i64 %15(i32 %16, i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %48

24:                                               ; preds = %12, %3
  %25 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 28)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 28, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 6
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load %struct.SelectCertData*, %struct.SelectCertData** %6, align 8
  %32 = getelementptr inbounds %struct.SelectCertData, %struct.SelectCertData* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load %struct.SelectCertData*, %struct.SelectCertData** %6, align 8
  %36 = getelementptr inbounds %struct.SelectCertData, %struct.SelectCertData* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.SelectCertData*, %struct.SelectCertData** %6, align 8
  %40 = getelementptr inbounds %struct.SelectCertData, %struct.SelectCertData* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.SelectCertData*, %struct.SelectCertData** %6, align 8
  %44 = getelementptr inbounds %struct.SelectCertData, %struct.SelectCertData* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = call i32 @CryptUIDlgViewCertificateW(%struct.TYPE_4__* %7, i32* null)
  br label %48

48:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @CryptUIDlgViewCertificateW(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
