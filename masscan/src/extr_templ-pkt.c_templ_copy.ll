; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_templ_copy.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_templ_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplatePacket = type { i32, %struct.TemplateSet* }
%struct.TemplateSet = type { i32, %struct.TemplatePacket* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i32, %struct.TemplatePacket* } @templ_copy(%struct.TemplateSet* %0) #0 {
  %2 = alloca %struct.TemplateSet, align 8
  %3 = alloca %struct.TemplateSet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TemplatePacket*, align 8
  %6 = alloca %struct.TemplatePacket*, align 8
  store %struct.TemplateSet* %0, %struct.TemplateSet** %3, align 8
  %7 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %8 = call i32 @memcpy(%struct.TemplateSet* %2, %struct.TemplateSet* %7, i32 16)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %12 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %46

15:                                               ; preds = %9
  %16 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %17 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %16, i32 0, i32 1
  %18 = load %struct.TemplatePacket*, %struct.TemplatePacket** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %18, i64 %20
  store %struct.TemplatePacket* %21, %struct.TemplatePacket** %5, align 8
  %22 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %2, i32 0, i32 1
  %23 = load %struct.TemplatePacket*, %struct.TemplatePacket** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %23, i64 %25
  store %struct.TemplatePacket* %26, %struct.TemplatePacket** %6, align 8
  %27 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %28 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TemplateSet* @MALLOC(i32 %29)
  %31 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %32 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %31, i32 0, i32 1
  store %struct.TemplateSet* %30, %struct.TemplateSet** %32, align 8
  %33 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %34 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %33, i32 0, i32 1
  %35 = load %struct.TemplateSet*, %struct.TemplateSet** %34, align 8
  %36 = load %struct.TemplatePacket*, %struct.TemplatePacket** %5, align 8
  %37 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %36, i32 0, i32 1
  %38 = load %struct.TemplateSet*, %struct.TemplateSet** %37, align 8
  %39 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %40 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @memcpy(%struct.TemplateSet* %35, %struct.TemplateSet* %38, i32 %41)
  br label %43

43:                                               ; preds = %15
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %9

46:                                               ; preds = %9
  %47 = bitcast %struct.TemplateSet* %2 to { i32, %struct.TemplatePacket* }*
  %48 = load { i32, %struct.TemplatePacket* }, { i32, %struct.TemplatePacket* }* %47, align 8
  ret { i32, %struct.TemplatePacket* } %48
}

declare dso_local i32 @memcpy(%struct.TemplateSet*, %struct.TemplateSet*, i32) #1

declare dso_local %struct.TemplateSet* @MALLOC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
