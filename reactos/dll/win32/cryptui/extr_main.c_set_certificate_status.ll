; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_certificate_status.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_certificate_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@EM_SETSEL = common dso_local global i32 0, align 4
@CERT_CONFIDENCE_SIG = common dso_local global i32 0, align 4
@IDS_CERTIFICATE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@CERT_CONFIDENCE_TIME = common dso_local global i32 0, align 4
@IDS_CERTIFICATE_BAD_TIME = common dso_local global i32 0, align 4
@CERT_CONFIDENCE_TIMENEST = common dso_local global i32 0, align 4
@IDS_CERTIFICATE_BAD_TIMENEST = common dso_local global i32 0, align 4
@IDS_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@IDS_CERTIFICATE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @set_certificate_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_certificate_status(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @EM_SETSEL, align 4
  %7 = call i32 @SendMessageW(i32 %5, i32 %6, i32 0, i32 -1)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @CERT_CONFIDENCE_SIG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IDS_CERTIFICATE_BAD_SIGNATURE, align 4
  %17 = call i32 @add_string_resource_to_control(i32 %15, i32 %16)
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CERT_CONFIDENCE_TIME, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @IDS_CERTIFICATE_BAD_TIME, align 4
  %28 = call i32 @add_string_resource_to_control(i32 %26, i32 %27)
  br label %55

29:                                               ; preds = %18
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CERT_CONFIDENCE_TIMENEST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @IDS_CERTIFICATE_BAD_TIMENEST, align 4
  %39 = call i32 @add_string_resource_to_control(i32 %37, i32 %38)
  br label %54

40:                                               ; preds = %29
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @IDS_CERTIFICATE_REVOKED, align 4
  %48 = call i32 @add_string_resource_to_control(i32 %46, i32 %47)
  br label %53

49:                                               ; preds = %40
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @IDS_CERTIFICATE_VALID, align 4
  %52 = call i32 @add_string_resource_to_control(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %14
  ret void
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @add_string_resource_to_control(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
