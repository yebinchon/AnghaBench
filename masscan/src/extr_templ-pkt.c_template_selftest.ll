; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_selftest.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_template_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplateSet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"\00\11\223DU\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fUD3\22\11\00", align 1
@Proto_TCP = common dso_local global i64 0, align 8
@Proto_UDP = common dso_local global i64 0, align 8
@Proto_ICMP_ping = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"template: failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @template_selftest() #0 {
  %1 = alloca [1 x %struct.TemplateSet], align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = getelementptr inbounds [1 x %struct.TemplateSet], [1 x %struct.TemplateSet]* %1, i64 0, i64 0
  %4 = call i32 @memset(%struct.TemplateSet* %3, i32 0, i32 8)
  %5 = getelementptr inbounds [1 x %struct.TemplateSet], [1 x %struct.TemplateSet]* %1, i64 0, i64 0
  %6 = call i32 @template_packet_init(%struct.TemplateSet* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 1, i32 0)
  %7 = getelementptr inbounds [1 x %struct.TemplateSet], [1 x %struct.TemplateSet]* %1, i64 0, i64 0
  %8 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i64, i64* @Proto_TCP, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @Proto_TCP, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = getelementptr inbounds [1 x %struct.TemplateSet], [1 x %struct.TemplateSet]* %1, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @Proto_UDP, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @Proto_UDP, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %2, align 4
  %31 = getelementptr inbounds [1 x %struct.TemplateSet], [1 x %struct.TemplateSet]* %1, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TemplateSet, %struct.TemplateSet* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* @Proto_ICMP_ping, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @Proto_ICMP_ping, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %0
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %0
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.TemplateSet*, i32, i32) #1

declare dso_local i32 @template_packet_init(%struct.TemplateSet*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
