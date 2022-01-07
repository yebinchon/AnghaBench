; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_blobmsg_add_macaddr.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/services/hostapd/src/src/ap/extr_ubus.c_blobmsg_add_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blob_buf = type { i32 }

@MACSTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blob_buf*, i8*, i32*)* @blobmsg_add_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blobmsg_add_macaddr(%struct.blob_buf* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.blob_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.blob_buf* %0, %struct.blob_buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.blob_buf*, %struct.blob_buf** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @blobmsg_alloc_string_buffer(%struct.blob_buf* %8, i8* %9, i32 20)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** @MACSTR, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @MAC2STR(i32* %13)
  %15 = call i32 @sprintf(i8* %11, i8* %12, i32 %14)
  %16 = load %struct.blob_buf*, %struct.blob_buf** %4, align 8
  %17 = call i32 @blobmsg_add_string_buffer(%struct.blob_buf* %16)
  ret void
}

declare dso_local i8* @blobmsg_alloc_string_buffer(%struct.blob_buf*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @MAC2STR(i32*) #1

declare dso_local i32 @blobmsg_add_string_buffer(%struct.blob_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
