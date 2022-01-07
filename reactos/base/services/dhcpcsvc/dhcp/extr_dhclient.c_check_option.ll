; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_check_option.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_check_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client_lease = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Invalid IP address in option(%d): %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Bogus Host Name option %d: %s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unknown dhcp option value 0x%x\00", align 1
@unknown_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_option(%struct.client_lease* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.client_lease* %0, %struct.client_lease** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %10 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %18 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @pretty_print_option(i32 %8, i32 %16, i32 %24, i32 0, i32 0)
  store i8* %25, i8** %6, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %28 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %36 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @option_as_string(i32 %26, i32 %34, i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* %5, align 4
  switch i32 %44, label %65 [
    i32 136, label %45
    i32 131, label %45
    i32 156, label %45
    i32 140, label %45
    i32 170, label %45
    i32 161, label %45
    i32 187, label %45
    i32 160, label %45
    i32 164, label %45
    i32 142, label %45
    i32 135, label %45
    i32 188, label %45
    i32 150, label %45
    i32 148, label %45
    i32 154, label %45
    i32 155, label %45
    i32 167, label %45
    i32 173, label %45
    i32 166, label %54
    i32 171, label %54
    i32 151, label %54
    i32 147, label %64
    i32 132, label %64
    i32 189, label %64
    i32 157, label %64
    i32 141, label %64
    i32 168, label %64
    i32 162, label %64
    i32 149, label %64
    i32 143, label %64
    i32 158, label %64
    i32 186, label %64
    i32 146, label %64
    i32 145, label %64
    i32 163, label %64
    i32 191, label %64
    i32 144, label %64
    i32 159, label %64
    i32 139, label %64
    i32 138, label %64
    i32 137, label %64
    i32 130, label %64
    i32 190, label %64
    i32 165, label %64
    i32 185, label %64
    i32 133, label %64
    i32 134, label %64
    i32 129, label %64
    i32 153, label %64
    i32 152, label %64
    i32 128, label %64
    i32 174, label %64
    i32 182, label %64
    i32 178, label %64
    i32 179, label %64
    i32 177, label %64
    i32 180, label %64
    i32 181, label %64
    i32 175, label %64
    i32 176, label %64
    i32 184, label %64
    i32 183, label %64
    i32 172, label %64
    i32 169, label %64
  ]

45:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @ipv4addrs(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51)
  store i32 0, i32* %3, align 4
  br label %69

53:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %69

54:                                               ; preds = %2, %2, %2
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @res_hnok(i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %59, i8* %60, i8* %61)
  br label %63

63:                                               ; preds = %58, %54
  store i32 1, i32* %3, align 4
  br label %69

64:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %69

65:                                               ; preds = %2
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (i8*, i32, ...) @warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @unknown_ok, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %64, %63, %53, %49
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i8* @pretty_print_option(i32, i32, i32, i32, i32) #1

declare dso_local i8* @option_as_string(i32, i32, i32) #1

declare dso_local i32 @ipv4addrs(i8*) #1

declare dso_local i32 @warning(i8*, i32, ...) #1

declare dso_local i32 @res_hnok(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
