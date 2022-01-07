; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_get_source_port.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_get_source_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplateSet = type { %struct.TemplatePacket* }
%struct.TemplatePacket = type { i8*, i32 }

@Proto_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @template_get_source_port(%struct.TemplateSet* %0) #0 {
  %2 = alloca %struct.TemplateSet*, align 8
  %3 = alloca %struct.TemplatePacket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TemplateSet* %0, %struct.TemplateSet** %2, align 8
  %6 = load %struct.TemplateSet*, %struct.TemplateSet** %2, align 8
  %7 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %6, i32 0, i32 0
  %8 = load %struct.TemplatePacket*, %struct.TemplatePacket** %7, align 8
  %9 = load i64, i64* @Proto_TCP, align 8
  %10 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %8, i64 %9
  store %struct.TemplatePacket* %10, %struct.TemplatePacket** %3, align 8
  %11 = load %struct.TemplatePacket*, %struct.TemplatePacket** %3, align 8
  %12 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load %struct.TemplatePacket*, %struct.TemplatePacket** %3, align 8
  %15 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %18, 0
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl i32 %31, 0
  %33 = or i32 %24, %32
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
