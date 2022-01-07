; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_add_native_resource.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_ra.c_ra_add_native_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { i32, i32 }
%struct.ra_native_resource = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_add_native_resource(%struct.ra* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ra*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ra_native_resource, align 8
  store %struct.ra* %0, %struct.ra** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.ra_native_resource, %struct.ra_native_resource* %7, i32 0, i32 0
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.ra_native_resource, %struct.ra_native_resource* %7, i32 0, i32 1
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = load %struct.ra*, %struct.ra** %4, align 8
  %13 = load %struct.ra*, %struct.ra** %4, align 8
  %14 = getelementptr inbounds %struct.ra, %struct.ra* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ra*, %struct.ra** %4, align 8
  %17 = getelementptr inbounds %struct.ra, %struct.ra* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = bitcast %struct.ra_native_resource* %7 to { i8*, i8* }*
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @MP_TARRAY_APPEND(%struct.ra* %12, i32 %15, i32 %18, i8* %21, i8* %23)
  ret void
}

declare dso_local i32 @MP_TARRAY_APPEND(%struct.ra*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
