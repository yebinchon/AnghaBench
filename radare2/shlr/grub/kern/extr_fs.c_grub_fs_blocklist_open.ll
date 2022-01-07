; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_fs_blocklist_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_fs.c_grub_fs_blocklist_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.grub_fs_block*, %struct.TYPE_5__* }
%struct.grub_fs_block = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@GRUB_ULONG_MAX = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid file name `%s'\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"beyond the total sectors\00", align 1
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*)* @grub_fs_blocklist_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_fs_blocklist_open(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.grub_fs_block*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %7, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @grub_strchr(i8* %20, i8 signext 44)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %24, %17
  br label %28

28:                                               ; preds = %27
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %17, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = mul i64 8, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.grub_fs_block* @grub_zalloc(i32 %36)
  store %struct.grub_fs_block* %37, %struct.grub_fs_block** %10, align 8
  %38 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %39 = icmp ne %struct.grub_fs_block* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  store i64 0, i64* %3, align 8
  br label %209

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load i8*, i8** %5, align 8
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %75, label %48

48:                                               ; preds = %41
  %49 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %50 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %49, i64 0
  %51 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GRUB_ULONG_MAX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @GRUB_ULONG_MAX, align 4
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 9
  br label %64

64:                                               ; preds = %59, %57
  %65 = phi i32 [ %58, %57 ], [ %63, %59 ]
  %66 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %67 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %66, i64 0
  %68 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %70 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %69, i64 0
  %71 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %200

75:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %196, %75
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %199

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 43
  br i1 %84, label %85, label %106

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @grub_strtoull(i8* %86, i8** %6, i32 0)
  %88 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %88, i64 %90
  %92 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  %93 = load i64, i64* @grub_errno, align 8
  %94 = load i64, i64* @GRUB_ERR_NONE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %85
  %97 = load i8*, i8** %6, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 43
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %85
  %102 = load i32, i32* @GRUB_ERR_BAD_FILENAME, align 4
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (i32, i8*, ...) @grub_error(i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %103)
  br label %205

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %80
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @grub_strtoul(i8* %109, i8** %6, i32 0)
  %111 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %111, i64 %113
  %115 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %114, i32 0, i32 1
  store i32 %110, i32* %115, align 4
  %116 = load i64, i64* @grub_errno, align 8
  %117 = load i64, i64* @GRUB_ERR_NONE, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %142, label %119

119:                                              ; preds = %106
  %120 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %120, i64 %122
  %124 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %119
  %128 = load i8*, i8** %6, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load i8*, i8** %6, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 44
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i8*, i8** %6, align 8
  %139 = load i8, i8* %138, align 1
  %140 = call i32 @grub_isspace(i8 signext %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %137, %119, %106
  %143 = load i32, i32* @GRUB_ERR_BAD_FILENAME, align 4
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 (i32, i8*, ...) @grub_error(i32 %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %144)
  br label %205

146:                                              ; preds = %137, %132, %127
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %150, i64 %152
  %154 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %156, i64 %158
  %160 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %155, %161
  %163 = icmp slt i32 %149, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %146
  %165 = load i32, i32* @GRUB_ERR_BAD_FILENAME, align 4
  %166 = call i32 (i32, i8*, ...) @grub_error(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %205

167:                                              ; preds = %146
  %168 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %169 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %170 = load i32, i32* %8, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %169, i64 %171
  %173 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, %168
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %177 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %178 = load i32, i32* %8, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %177, i64 %179
  %181 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, %176
  store i32 %183, i32* %181, align 4
  %184 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %185 = load i32, i32* %8, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %184, i64 %186
  %188 = getelementptr inbounds %struct.grub_fs_block, %struct.grub_fs_block* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %6, align 8
  br label %196

196:                                              ; preds = %167
  %197 = load i32, i32* %8, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %8, align 4
  br label %76

199:                                              ; preds = %76
  br label %200

200:                                              ; preds = %199, %64
  %201 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  store %struct.grub_fs_block* %201, %struct.grub_fs_block** %203, align 8
  %204 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %204, i64* %3, align 8
  br label %209

205:                                              ; preds = %164, %142, %101
  %206 = load %struct.grub_fs_block*, %struct.grub_fs_block** %10, align 8
  %207 = call i32 @grub_free(%struct.grub_fs_block* %206)
  %208 = load i64, i64* @grub_errno, align 8
  store i64 %208, i64* %3, align 8
  br label %209

209:                                              ; preds = %205, %200, %40
  %210 = load i64, i64* %3, align 8
  ret i64 %210
}

declare dso_local i8* @grub_strchr(i8*, i8 signext) #1

declare dso_local %struct.grub_fs_block* @grub_zalloc(i32) #1

declare dso_local i32 @grub_strtoull(i8*, i8**, i32) #1

declare dso_local i32 @grub_error(i32, i8*, ...) #1

declare dso_local i32 @grub_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @grub_isspace(i8 signext) #1

declare dso_local i32 @grub_free(%struct.grub_fs_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
