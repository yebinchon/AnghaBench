; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_set_ttl.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_set_ttl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplateSet = type { i32, %struct.TemplatePacket* }
%struct.TemplatePacket = type { i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @template_set_ttl(%struct.TemplateSet* %0, i32 %1) #0 {
  %3 = alloca %struct.TemplateSet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TemplatePacket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TemplateSet* %0, %struct.TemplateSet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %12 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %9
  %16 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %17 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %16, i32 0, i32 1
  %18 = load %struct.TemplatePacket*, %struct.TemplatePacket** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %18, i64 %20
  store %struct.TemplatePacket* %21, %struct.TemplatePacket** %6, align 8
  %22 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %23 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %26 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, 8
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8 %29, i8* %34, align 1
  %35 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %36 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %39 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %42 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ip_header_checksum(i8* %37, i32 %40, i32 %43)
  %45 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %46 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %15
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %9

50:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ip_header_checksum(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
