; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadLine.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, %struct.TYPE_8__, i32, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i8* }

@COPY_NEW_FE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @CopyReadLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyReadLine(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %7 = call i32 @resetStringInfo(%struct.TYPE_8__* %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i32 @CopyReadLineText(%struct.TYPE_7__* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @COPY_NEW_FE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %29, %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = call i64 @CopyLoadRawBuf(%struct.TYPE_7__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %23, label %33

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %16
  br label %175

35:                                               ; preds = %1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %174 [
    i32 129, label %39
    i32 131, label %78
    i32 130, label %117
    i32 128, label %172
  ]

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %71, i64 %76
  store i8 0, i8* %77, align 1
  br label %174

78:                                               ; preds = %35
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sge i32 %82, 1
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %89, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 13
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %110, i64 %115
  store i8 0, i8* %116, align 1
  br label %174

117:                                              ; preds = %35
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sge i32 %121, 2
  %123 = zext i1 %122 to i32
  %124 = call i32 @Assert(i32 %123)
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 13
  %139 = zext i1 %138 to i32
  %140 = call i32 @Assert(i32 %139)
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %144, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 10
  %155 = zext i1 %154 to i32
  %156 = call i32 @Assert(i32 %155)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 2
  store i32 %161, i32* %159, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %165, i64 %170
  store i8 0, i8* %171, align 1
  br label %174

172:                                              ; preds = %35
  %173 = call i32 @Assert(i32 0)
  br label %174

174:                                              ; preds = %35, %172, %117, %78, %39
  br label %175

175:                                              ; preds = %174, %34
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %213

180:                                              ; preds = %175
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @pg_any_to_server(i8* %184, i64 %189, i32 %192)
  store i8* %193, i8** %4, align 8
  %194 = load i8*, i8** %4, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = icmp ne i8* %194, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %180
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 4
  %203 = call i32 @resetStringInfo(%struct.TYPE_8__* %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 4
  %206 = load i8*, i8** %4, align 8
  %207 = load i8*, i8** %4, align 8
  %208 = call i32 @strlen(i8* %207)
  %209 = call i32 @appendBinaryStringInfo(%struct.TYPE_8__* %205, i8* %206, i32 %208)
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 @pfree(i8* %210)
  br label %212

212:                                              ; preds = %200, %180
  br label %213

213:                                              ; preds = %212, %175
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  store i32 1, i32* %215, align 4
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i32 @resetStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @CopyReadLineText(%struct.TYPE_7__*) #1

declare dso_local i64 @CopyLoadRawBuf(%struct.TYPE_7__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pg_any_to_server(i8*, i64, i32) #1

declare dso_local i32 @appendBinaryStringInfo(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
