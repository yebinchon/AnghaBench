; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_udp_payload_fixup.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_udp_payload_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplatePacket = type { i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TemplatePacket*, i32, i32)* @udp_payload_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp_payload_fixup(%struct.TemplatePacket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TemplatePacket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64 (i8*, i32, i32)*, align 8
  store %struct.TemplatePacket* %0, %struct.TemplatePacket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 4096, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TemplatePacket*, %struct.TemplatePacket** %4, align 8
  %14 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %11, align 8
  store i64 (i8*, i32, i32)* null, i64 (i8*, i32, i32)** %12, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @UNUSEDPARM(i32 %16)
  %18 = load %struct.TemplatePacket*, %struct.TemplatePacket** %4, align 8
  %19 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = bitcast i64 (i8*, i32, i32)** %12 to i64 (i8*, i32, i32)*
  %23 = call i32 @payloads_udp_lookup(i32 %20, i32 %21, i8** %7, i32* %8, i32* %9, i32* %10, i64 (i8*, i32, i32)* %22)
  %24 = load i8*, i8** %11, align 8
  %25 = load %struct.TemplatePacket*, %struct.TemplatePacket** %4, align 8
  %26 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %12, align 8
  %34 = icmp ne i64 (i8*, i32, i32)* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %3
  %36 = load i64 (i8*, i32, i32)*, i64 (i8*, i32, i32)** %12, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load %struct.TemplatePacket*, %struct.TemplatePacket** %4, align 8
  %39 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %37, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 %36(i8* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %35, %3
  %51 = load %struct.TemplatePacket*, %struct.TemplatePacket** %4, align 8
  %52 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %53, %54
  %56 = load %struct.TemplatePacket*, %struct.TemplatePacket** %4, align 8
  %57 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @UNUSEDPARM(i32) #1

declare dso_local i32 @payloads_udp_lookup(i32, i32, i8**, i32*, i32*, i32*, i64 (i8*, i32, i32)*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
