; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_tcp_checksum.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_templ-pkt.c_tcp_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TemplatePacket = type { i8*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TemplatePacket*)* @tcp_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_checksum(%struct.TemplatePacket* %0) #0 {
  %2 = alloca %struct.TemplatePacket*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TemplatePacket* %0, %struct.TemplatePacket** %2, align 8
  %6 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %7 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 6, i32* %4, align 4
  %9 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %10 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %13 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %11, %14
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %20 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 12
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %30 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 13
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %27, %36
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %42 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 14
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 8
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %52 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 15
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %50, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %49, %58
  %60 = load i32, i32* %4, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i8*, i8** %3, align 8
  %63 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %64 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 8
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %74 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 17
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = or i32 %71, %80
  %82 = load i32, i32* %4, align 4
  %83 = add i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %86 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 18
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %84, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = load i8*, i8** %3, align 8
  %95 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %96 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 19
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %93, %102
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %107 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %137, %1
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %112 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %140

115:                                              ; preds = %109
  %116 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %117 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = load %struct.TemplatePacket*, %struct.TemplatePacket** %2, align 8
  %126 = getelementptr inbounds %struct.TemplatePacket, %struct.TemplatePacket* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = add i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = or i32 %124, %133
  %135 = load i32, i32* %4, align 4
  %136 = add i32 %135, %134
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %115
  %138 = load i32, i32* %5, align 4
  %139 = add i32 %138, 2
  store i32 %139, i32* %5, align 4
  br label %109

140:                                              ; preds = %109
  %141 = load i32, i32* %4, align 4
  %142 = and i32 %141, 65535
  %143 = load i32, i32* %4, align 4
  %144 = lshr i32 %143, 16
  %145 = add i32 %142, %144
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = and i32 %146, 65535
  %148 = load i32, i32* %4, align 4
  %149 = lshr i32 %148, 16
  %150 = add i32 %147, %149
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = and i32 %151, 65535
  %153 = load i32, i32* %4, align 4
  %154 = lshr i32 %153, 16
  %155 = add i32 %152, %154
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
