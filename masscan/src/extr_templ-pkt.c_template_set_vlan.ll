; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_set_vlan.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_set_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplateSet = type { i32, %struct.TemplatePacket* }
%struct.TemplatePacket = type { i32, i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @template_set_vlan(%struct.TemplateSet* %0, i32 %1) #0 {
  %3 = alloca %struct.TemplateSet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TemplatePacket*, align 8
  %7 = alloca i8*, align 8
  store %struct.TemplateSet* %0, %struct.TemplateSet** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %81, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %11 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %84

14:                                               ; preds = %8
  %15 = load %struct.TemplateSet*, %struct.TemplateSet** %3, align 8
  %16 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %15, i32 0, i32 1
  %17 = load %struct.TemplatePacket*, %struct.TemplatePacket** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %17, i64 %19
  store %struct.TemplatePacket* %20, %struct.TemplatePacket** %6, align 8
  %21 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %22 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 14
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %81

26:                                               ; preds = %14
  %27 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %28 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 4
  %31 = call i8* @MALLOC(i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %34 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @memcpy(i8* %32, i8* %35, i32 12)
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 16
  %39 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %40 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 12
  %43 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %44 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 12
  %47 = call i32 @memcpy(i8* %38, i8* %42, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 12
  store i8 -127, i8* %49, align 1
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 13
  store i8 0, i8* %51, align 1
  %52 = load i32, i32* %4, align 4
  %53 = lshr i32 %52, 8
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 14
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %4, align 4
  %58 = lshr i32 %57, 0
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 15
  store i8 %59, i8* %61, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %64 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %66 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 4
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %70 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %70, align 8
  %73 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %74 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TemplatePacket*, %struct.TemplatePacket** %6, align 8
  %78 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %26, %25
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %8

84:                                               ; preds = %8
  ret void
}

declare dso_local i8* @MALLOC(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
