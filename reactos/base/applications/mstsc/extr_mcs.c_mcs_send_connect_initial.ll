; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_send_connect_initial.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_send_connect_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@MCS_CONNECT_INITIAL = common dso_local global i32 0, align 4
@BER_TAG_OCTET_STRING = common dso_local global i32 0, align 4
@BER_TAG_BOOLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @mcs_send_connect_initial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs_send_connect_initial(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 115, %13
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 5
  %17 = call %struct.TYPE_10__* @iso_init(i32 %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = load i32, i32* @MCS_CONNECT_INITIAL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ber_out_header(%struct.TYPE_10__* %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = load i32, i32* @BER_TAG_OCTET_STRING, align 4
  %24 = call i32 @ber_out_header(%struct.TYPE_10__* %22, i32 %23, i32 1)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = call i32 @out_uint8(%struct.TYPE_10__* %25, i32 1)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = load i32, i32* @BER_TAG_OCTET_STRING, align 4
  %29 = call i32 @ber_out_header(%struct.TYPE_10__* %27, i32 %28, i32 1)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = call i32 @out_uint8(%struct.TYPE_10__* %30, i32 1)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = load i32, i32* @BER_TAG_BOOLEAN, align 4
  %34 = call i32 @ber_out_header(%struct.TYPE_10__* %32, i32 %33, i32 1)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = call i32 @out_uint8(%struct.TYPE_10__* %35, i32 255)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i32 @mcs_out_domain_params(%struct.TYPE_10__* %37, i32 34, i32 2, i32 0, i32 65535)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = call i32 @mcs_out_domain_params(%struct.TYPE_10__* %39, i32 1, i32 1, i32 1, i32 1056)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = call i32 @mcs_out_domain_params(%struct.TYPE_10__* %41, i32 65535, i32 64535, i32 65535, i32 65535)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load i32, i32* @BER_TAG_OCTET_STRING, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ber_out_header(%struct.TYPE_10__* %43, i32 %44, i32 %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @out_uint8p(%struct.TYPE_10__* %47, i32 %50, i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = call i32 @s_mark_end(%struct.TYPE_10__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = call i32 @iso_send(%struct.TYPE_10__* %55)
  ret void
}

declare dso_local %struct.TYPE_10__* @iso_init(i32) #1

declare dso_local i32 @ber_out_header(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @out_uint8(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mcs_out_domain_params(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @out_uint8p(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @s_mark_end(%struct.TYPE_10__*) #1

declare dso_local i32 @iso_send(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
