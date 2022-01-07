; ModuleID = '/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_m_sekurlsa_genericEncLsaIsoOutput.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_m_sekurlsa_genericEncLsaIsoOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"\0A\09   * unkData1 : \00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A\09     unkData2 : \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0A\09     Encrypted: \00", align 1
@ENC_LSAISO_DATA_BLOB = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_genericEncLsaIsoOutput(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kull_m_string_dprintf_hex(i32 %9, i32 4, i32 0)
  %11 = call i32 @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kull_m_string_dprintf_hex(i32 %14, i32 4, i32 0)
  %16 = call i32 @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ENC_LSAISO_DATA_BLOB, align 4
  %22 = load i32, i32* @data, align 4
  %23 = call i32 @FIELD_OFFSET(i32 %21, i32 %22)
  %24 = sub nsw i32 %20, %23
  %25 = call i32 @kull_m_string_dprintf_hex(i32 %19, i32 %24, i32 0)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @kull_m_string_dprintf_hex(i32, i32, i32) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
