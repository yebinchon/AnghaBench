; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_x509.c_r_x509_parse_subjectpublickeyinfo.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_x509.c_r_x509_parse_subjectpublickeyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r_x509_parse_subjectpublickeyinfo(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %9, %2
  store i32 0, i32* %3, align 4
  br label %141

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = call i32 @r_x509_parse_algorithmidentifier(i32* %21, %struct.TYPE_9__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %140

36:                                               ; preds = %19
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %40, i64 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %6, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @r_asn1_create_binary(i32 %45, i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %139

57:                                               ; preds = %36
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %61, i64 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = icmp ne %struct.TYPE_9__* %63, null
  br i1 %64, label %65, label %139

65:                                               ; preds = %57
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %69, i64 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %139

76:                                               ; preds = %65
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %80, i64 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %6, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %86, i64 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %76
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %94, i64 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %102, i64 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @r_asn1_create_binary(i32 %98, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %90, %76
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %114, i64 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = icmp ne %struct.TYPE_9__* %116, null
  br i1 %117, label %118, label %138

118:                                              ; preds = %110
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %122, i64 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %130, i64 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i8* @r_asn1_create_binary(i32 %126, i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %118, %110
  br label %139

139:                                              ; preds = %138, %65, %57, %36
  br label %140

140:                                              ; preds = %139, %19
  store i32 1, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %18
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @r_x509_parse_algorithmidentifier(i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @r_asn1_create_binary(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
