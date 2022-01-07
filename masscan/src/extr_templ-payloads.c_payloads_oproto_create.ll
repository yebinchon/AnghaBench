; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_oproto_create.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-payloads.c_payloads_oproto_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PayloadUDP_Default = type { i32, i32, i32, i64, i32 }
%struct.PayloadsUDP = type { i32 }
%struct.RangeList = type { i32 }

@hard_coded_oproto_payloads = common dso_local global %struct.PayloadUDP_Default* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.PayloadsUDP* @payloads_oproto_create() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.PayloadsUDP*, align 8
  %3 = alloca %struct.PayloadUDP_Default*, align 8
  %4 = alloca %struct.RangeList, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** @hard_coded_oproto_payloads, align 8
  store %struct.PayloadUDP_Default* %6, %struct.PayloadUDP_Default** %3, align 8
  %7 = call %struct.PayloadsUDP* @CALLOC(i32 1, i32 4)
  store %struct.PayloadsUDP* %7, %struct.PayloadsUDP** %2, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %72, %0
  %9 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %9, i64 %11
  %13 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %8
  %17 = bitcast %struct.RangeList* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  %18 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %19 = load i32, i32* %1, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %18, i64 %20
  %22 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %25 = load i32, i32* %1, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %24, i64 %26
  %28 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rangelist_add_range(%struct.RangeList* %4, i32 %23, i32 %29)
  %31 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %32 = load i32, i32* %1, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %31, i64 %33
  %35 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %48

39:                                               ; preds = %16
  %40 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %41 = load i32, i32* %1, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %40, i64 %42
  %44 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @strlen(i64 %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %39, %16
  %49 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %2, align 8
  %50 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %51 = load i32, i32* %1, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %50, i64 %52
  %54 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %59 = load i32, i32* %1, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %58, i64 %60
  %62 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.PayloadUDP_Default*, %struct.PayloadUDP_Default** %3, align 8
  %65 = load i32, i32* %1, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %64, i64 %66
  %68 = getelementptr inbounds %struct.PayloadUDP_Default, %struct.PayloadUDP_Default* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @payloads_datagram_add(%struct.PayloadsUDP* %49, i8* %56, i32 %57, %struct.RangeList* %4, i32 %63, i32 %69)
  %71 = call i32 @rangelist_remove_all(%struct.RangeList* %4)
  br label %72

72:                                               ; preds = %48
  %73 = load i32, i32* %1, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %8

75:                                               ; preds = %8
  %76 = load %struct.PayloadsUDP*, %struct.PayloadsUDP** %2, align 8
  ret %struct.PayloadsUDP* %76
}

declare dso_local %struct.PayloadsUDP* @CALLOC(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i32, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @payloads_datagram_add(%struct.PayloadsUDP*, i8*, i32, %struct.RangeList*, i32, i32) #1

declare dso_local i32 @rangelist_remove_all(%struct.RangeList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
