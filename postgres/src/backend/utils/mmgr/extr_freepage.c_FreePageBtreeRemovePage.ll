; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeRemovePage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeRemovePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i64, i32 }
%struct.TYPE_19__ = type { i32*, i32* }

@FREE_PAGE_LEAF_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_22__*)* @FreePageBtreeRemovePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreePageBtreeRemovePage(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = call i8* @fpm_segment_base(%struct.TYPE_21__* %9)
  store i8* %10, i8** %5, align 8
  br label %11

11:                                               ; preds = %47, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_22__* @relptr_access(i8* %12, i32 %16)
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %6, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %19 = icmp eq %struct.TYPE_22__* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %11
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @relptr_store(i8* %21, i32 %24, %struct.TYPE_22__* null)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  br label %185

40:                                               ; preds = %11
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %54

47:                                               ; preds = %40
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %51 = call i32 @fpm_pointer_to_page(i8* %49, %struct.TYPE_22__* %50)
  %52 = call i32 @FreePageBtreeRecycle(%struct.TYPE_21__* %48, i32 %51)
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %53, %struct.TYPE_22__** %4, align 8
  br label %11

54:                                               ; preds = %46
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %56 = call i32 @FreePageBtreeFirstKey(%struct.TYPE_22__* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FREE_PAGE_LEAF_MAGIC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %110

63:                                               ; preds = %54
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @FreePageBtreeSearchLeaf(%struct.TYPE_22__* %64, i32 %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %67, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @Assert(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %75, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %63
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memmove(i32* %89, i32* %97, i32 %107)
  br label %109

109:                                              ; preds = %82, %63
  br label %157

110:                                              ; preds = %54
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @FreePageBtreeSearchInternal(%struct.TYPE_22__* %111, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %114, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @Assert(i32 %120)
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %126, 1
  %128 = icmp slt i32 %122, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %110
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = mul i64 4, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @memmove(i32* %136, i32* %144, i32 %154)
  br label %156

156:                                              ; preds = %129, %110
  br label %157

157:                                              ; preds = %156, %109
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %160, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 0
  %168 = zext i1 %167 to i32
  %169 = call i32 @Assert(i32 %168)
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %171 = load i8*, i8** %5, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = call i32 @fpm_pointer_to_page(i8* %171, %struct.TYPE_22__* %172)
  %174 = call i32 @FreePageBtreeRecycle(%struct.TYPE_21__* %170, i32 %173)
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %157
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %180 = call i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_21__* %178, %struct.TYPE_22__* %179)
  br label %181

181:                                              ; preds = %177, %157
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %184 = call i32 @FreePageBtreeConsolidate(%struct.TYPE_21__* %182, %struct.TYPE_22__* %183)
  br label %185

185:                                              ; preds = %181, %20
  ret void
}

declare dso_local i8* @fpm_segment_base(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @relptr_access(i8*, i32) #1

declare dso_local i32 @relptr_store(i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FreePageBtreeRecycle(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @fpm_pointer_to_page(i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @FreePageBtreeFirstKey(%struct.TYPE_22__*) #1

declare dso_local i32 @FreePageBtreeSearchLeaf(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @FreePageBtreeSearchInternal(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @FreePageBtreeAdjustAncestorKeys(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @FreePageBtreeConsolidate(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
