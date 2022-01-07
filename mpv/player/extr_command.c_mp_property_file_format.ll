; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_file_format.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_file_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_4__ = type { %struct.demuxer* }
%struct.demuxer = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_file_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_file_format(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.demuxer*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.demuxer*, %struct.demuxer** %16, align 8
  store %struct.demuxer* %17, %struct.demuxer** %11, align 8
  %18 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %19 = icmp ne %struct.demuxer* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %24 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %29 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %37

31:                                               ; preds = %22
  %32 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %33 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %37

37:                                               ; preds = %31, %27
  %38 = phi i8* [ %30, %27 ], [ %36, %31 ]
  store i8* %38, i8** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @m_property_strdup_ro(i32 %39, i8* %40, i8* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %37, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @m_property_strdup_ro(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
