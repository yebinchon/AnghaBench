; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_display.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/kerberos/extr_kuhl_m_kerberos_ticket.c_kuhl_m_kerberos_ticket_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [26 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 83, i32 116, i32 97, i32 114, i32 116, i32 47, i32 69, i32 110, i32 100, i32 47, i32 77, i32 97, i32 120, i32 82, i32 101, i32 110, i32 101, i32 119, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 32, i32 59, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 32, i32 78, i32 97, i32 109, i32 101, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [19 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 84, i32 97, i32 114, i32 103, i32 101, i32 116, i32 32, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [19 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 67, i32 108, i32 105, i32 101, i32 110, i32 116, i32 32, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [9 x i32] [i32 32, i32 40, i32 32, i32 37, i32 119, i32 90, i32 32, i32 41, i32 0], align 4
@.str.6 = private unnamed_addr constant [22 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 70, i32 108, i32 97, i32 103, i32 115, i32 32, i32 37, i32 48, i32 56, i32 120, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.7 = private unnamed_addr constant [37 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 83, i32 101, i32 115, i32 115, i32 105, i32 111, i32 110, i32 32, i32 75, i32 101, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 115, i32 0], align 4
@.str.8 = private unnamed_addr constant [8 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0], align 4
@.str.9 = private unnamed_addr constant [49 x i32] [i32 10, i32 9, i32 32, i32 32, i32 32, i32 84, i32 105, i32 99, i32 107, i32 101, i32 116, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 32, i32 45, i32 32, i32 37, i32 115, i32 32, i32 59, i32 32, i32 107, i32 118, i32 110, i32 111, i32 32, i32 61, i32 32, i32 37, i32 117, i32 0], align 4
@.str.10 = private unnamed_addr constant [20 x i32] [i32 78, i32 85, i32 76, i32 76, i32 32, i32 84, i32 105, i32 99, i32 107, i32 101, i32 116, i32 32, i32 86, i32 97, i32 108, i32 117, i32 101, i32 32, i32 33, i32 0], align 4
@.str.11 = private unnamed_addr constant [7 x i32] [i32 9, i32 91, i32 46, i32 46, i32 46, i32 93, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_kerberos_ticket_display(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str to i8*))
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 15
  %10 = call i32 @kull_m_string_displayLocalFileTime(i32* %9)
  %11 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 14
  %14 = call i32 @kull_m_string_displayLocalFileTime(i32* %13)
  %15 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str.1 to i8*))
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 13
  %18 = call i32 @kull_m_string_displayLocalFileTime(i32* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 11
  %24 = call i32 @kuhl_m_kerberos_ticket_displayExternalName(i8* bitcast ([19 x i32]* @.str.2 to i8*), i32 %21, i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 9
  %30 = call i32 @kuhl_m_kerberos_ticket_displayExternalName(i8* bitcast ([19 x i32]* @.str.3 to i8*), i32 %27, i32* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 7
  %36 = call i32 @kuhl_m_kerberos_ticket_displayExternalName(i8* bitcast ([19 x i32]* @.str.4 to i8*), i32 %33, i32* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 6
  %45 = call i32 (i8*, ...) @kprintf(i8* bitcast ([9 x i32]* @.str.5 to i8*), %struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %42, %3
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @kprintf(i8* bitcast ([22 x i32]* @.str.6 to i8*), i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @kuhl_m_kerberos_ticket_displayFlags(i32 %53)
  %55 = load i64, i64* %5, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %63)
  %65 = call i32 (i8*, ...) @kprintf(i8* bitcast ([37 x i32]* @.str.7 to i8*), i32 %60, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %57
  %72 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str.8 to i8*))
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @kull_m_string_wprintf_hex(i64 %76, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %71, %57
  br label %83

83:                                               ; preds = %82, %46
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @kuhl_m_kerberos_ticket_etype(i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @kprintf(i8* bitcast ([49 x i32]* @.str.9 to i8*), i32 %86, i32 %90, i32 %93)
  %95 = load i64, i64* %6, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %83
  %98 = call i32 (i8*, ...) @kprintf(i8* bitcast ([8 x i32]* @.str.8 to i8*))
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @kull_m_string_wprintf_hex(i64 %108, i32 %112, i32 1)
  br label %116

114:                                              ; preds = %97
  %115 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.10 to i8*))
  br label %116

116:                                              ; preds = %114, %104
  br label %119

117:                                              ; preds = %83
  %118 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.11 to i8*))
  br label %119

119:                                              ; preds = %117, %116
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_displayLocalFileTime(i32*) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_displayExternalName(i8*, i32, i32*) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_displayFlags(i32) #1

declare dso_local i32 @kuhl_m_kerberos_ticket_etype(i32) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i64, i32, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
