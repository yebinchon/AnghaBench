; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_EncodeDateOnly.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_datetime.c_EncodeDateOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_tm = type { i32, i64, i32 }

@MONTHS_PER_YEAR = common dso_local global i32 0, align 4
@DateOrder = common dso_local global i32 0, align 4
@DATEORDER_DMY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" BC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EncodeDateOnly(%struct.pg_tm* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pg_tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.pg_tm* %0, %struct.pg_tm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %8 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %13 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MONTHS_PER_YEAR, align 4
  %16 = icmp sle i32 %14, %15
  br label %17

17:                                               ; preds = %11, %3
  %18 = phi i1 [ false, %3 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %143 [
    i32 131, label %22
    i32 128, label %22
    i32 129, label %56
    i32 132, label %108
    i32 130, label %142
  ]

22:                                               ; preds = %17, %17
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %25 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %30 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  br label %38

32:                                               ; preds = %22
  %33 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %34 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 1
  %37 = sub nsw i64 0, %36
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i64 [ %31, %28 ], [ %37, %32 ]
  %40 = trunc i64 %39 to i32
  %41 = call i8* @pg_ltostr_zeropad(i8* %23, i32 %40, i32 4)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  store i8 45, i8* %42, align 1
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %46 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @pg_ltostr_zeropad(i8* %44, i32 %47, i32 2)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 45, i8* %49, align 1
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %53 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @pg_ltostr_zeropad(i8* %51, i32 %54, i32 2)
  store i8* %55, i8** %6, align 8
  br label %195

56:                                               ; preds = %17
  %57 = load i32, i32* @DateOrder, align 4
  %58 = load i32, i32* @DATEORDER_DMY, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %63 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @pg_ltostr_zeropad(i8* %61, i32 %64, i32 2)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  store i8 47, i8* %66, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %70 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i8* @pg_ltostr_zeropad(i8* %68, i32 %71, i32 2)
  store i8* %72, i8** %6, align 8
  br label %86

73:                                               ; preds = %56
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %76 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @pg_ltostr_zeropad(i8* %74, i32 %77, i32 2)
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %6, align 8
  store i8 47, i8* %79, align 1
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %83 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @pg_ltostr_zeropad(i8* %81, i32 %84, i32 2)
  store i8* %85, i8** %6, align 8
  br label %86

86:                                               ; preds = %73, %60
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  store i8 47, i8* %87, align 1
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %91 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %96 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  br label %104

98:                                               ; preds = %86
  %99 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %100 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  %103 = sub nsw i64 0, %102
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i64 [ %97, %94 ], [ %103, %98 ]
  %106 = trunc i64 %105 to i32
  %107 = call i8* @pg_ltostr_zeropad(i8* %89, i32 %106, i32 4)
  store i8* %107, i8** %6, align 8
  br label %195

108:                                              ; preds = %17
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %111 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i8* @pg_ltostr_zeropad(i8* %109, i32 %112, i32 2)
  store i8* %113, i8** %6, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  store i8 46, i8* %114, align 1
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %118 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i8* @pg_ltostr_zeropad(i8* %116, i32 %119, i32 2)
  store i8* %120, i8** %6, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  store i8 46, i8* %121, align 1
  %123 = load i8*, i8** %6, align 8
  %124 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %125 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %108
  %129 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %130 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  br label %138

132:                                              ; preds = %108
  %133 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %134 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = sub nsw i64 %135, 1
  %137 = sub nsw i64 0, %136
  br label %138

138:                                              ; preds = %132, %128
  %139 = phi i64 [ %131, %128 ], [ %137, %132 ]
  %140 = trunc i64 %139 to i32
  %141 = call i8* @pg_ltostr_zeropad(i8* %123, i32 %140, i32 4)
  store i8* %141, i8** %6, align 8
  br label %195

142:                                              ; preds = %17
  br label %143

143:                                              ; preds = %17, %142
  %144 = load i32, i32* @DateOrder, align 4
  %145 = load i32, i32* @DATEORDER_DMY, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = load i8*, i8** %6, align 8
  %149 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %150 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i8* @pg_ltostr_zeropad(i8* %148, i32 %151, i32 2)
  store i8* %152, i8** %6, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %6, align 8
  store i8 45, i8* %153, align 1
  %155 = load i8*, i8** %6, align 8
  %156 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %157 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @pg_ltostr_zeropad(i8* %155, i32 %158, i32 2)
  store i8* %159, i8** %6, align 8
  br label %173

160:                                              ; preds = %143
  %161 = load i8*, i8** %6, align 8
  %162 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %163 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i8* @pg_ltostr_zeropad(i8* %161, i32 %164, i32 2)
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %6, align 8
  store i8 45, i8* %166, align 1
  %168 = load i8*, i8** %6, align 8
  %169 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %170 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = call i8* @pg_ltostr_zeropad(i8* %168, i32 %171, i32 2)
  store i8* %172, i8** %6, align 8
  br label %173

173:                                              ; preds = %160, %147
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %6, align 8
  store i8 45, i8* %174, align 1
  %176 = load i8*, i8** %6, align 8
  %177 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %178 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %173
  %182 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %183 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  br label %191

185:                                              ; preds = %173
  %186 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %187 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = sub nsw i64 %188, 1
  %190 = sub nsw i64 0, %189
  br label %191

191:                                              ; preds = %185, %181
  %192 = phi i64 [ %184, %181 ], [ %190, %185 ]
  %193 = trunc i64 %192 to i32
  %194 = call i8* @pg_ltostr_zeropad(i8* %176, i32 %193, i32 4)
  store i8* %194, i8** %6, align 8
  br label %195

195:                                              ; preds = %191, %138, %104, %38
  %196 = load %struct.pg_tm*, %struct.pg_tm** %4, align 8
  %197 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp sle i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @memcpy(i8* %201, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 3
  store i8* %204, i8** %6, align 8
  br label %205

205:                                              ; preds = %200, %195
  %206 = load i8*, i8** %6, align 8
  store i8 0, i8* %206, align 1
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @pg_ltostr_zeropad(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
