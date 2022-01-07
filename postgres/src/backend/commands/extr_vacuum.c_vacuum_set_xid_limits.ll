; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_set_xid_limits.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_vacuum.c_vacuum_set_xid_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROCARRAY_FLAGS_VACUUM = common dso_local global i32 0, align 4
@vacuum_freeze_min_age = common dso_local global i32 0, align 4
@autovacuum_freeze_max_age = common dso_local global i32 0, align 4
@FirstNormalTransactionId = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"oldest xmin is far in the past\00", align 1
@.str.1 = private unnamed_addr constant [162 x i8] c"Close open transactions soon to avoid wraparound problems.\0AYou might also need to commit or roll back old prepared transactions, or drop stale replication slots.\00", align 1
@vacuum_multixact_freeze_min_age = common dso_local global i32 0, align 4
@FirstMultiXactId = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"oldest multixact is far in the past\00", align 1
@.str.3 = private unnamed_addr constant [75 x i8] c"Close open transactions with multixacts soon to avoid wraparound problems.\00", align 1
@vacuum_freeze_table_age = common dso_local global i32 0, align 4
@vacuum_multixact_freeze_table_age = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vacuum_set_xid_limits(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64* %5, i64* %6, i64* %7, i64* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i64* %5, i64** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  store i64* %9, i64** %20, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @PROCARRAY_FLAGS_VACUUM, align 4
  %32 = call i32 @GetOldestXmin(i32 %30, i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @TransactionIdLimitedForOldSnapshots(i32 %32, i32 %33)
  %35 = load i64*, i64** %16, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** %16, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @TransactionIdIsNormal(i64 %37)
  %39 = call i32 @Assert(i32 %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %21, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %10
  %44 = load i32, i32* @vacuum_freeze_min_age, align 4
  store i32 %44, i32* %21, align 4
  br label %45

45:                                               ; preds = %43, %10
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* @autovacuum_freeze_max_age, align 4
  %48 = sdiv i32 %47, 2
  %49 = call i32 @Min(i32 %46, i32 %48)
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp sge i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @Assert(i32 %52)
  %54 = load i64*, i64** %16, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  store i64 %58, i64* %24, align 8
  %59 = load i64, i64* %24, align 8
  %60 = call i32 @TransactionIdIsNormal(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %45
  %63 = load i64, i64* @FirstNormalTransactionId, align 8
  store i64 %63, i64* %24, align 8
  br label %64

64:                                               ; preds = %62, %45
  %65 = call i64 (...) @ReadNewTransactionId()
  %66 = load i32, i32* @autovacuum_freeze_max_age, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  store i64 %68, i64* %25, align 8
  %69 = load i64, i64* %25, align 8
  %70 = call i32 @TransactionIdIsNormal(i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %64
  %73 = load i64, i64* @FirstNormalTransactionId, align 8
  store i64 %73, i64* %25, align 8
  br label %74

74:                                               ; preds = %72, %64
  %75 = load i64, i64* %24, align 8
  %76 = load i64, i64* %25, align 8
  %77 = call i64 @TransactionIdPrecedes(i64 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load i32, i32* @WARNING, align 4
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %82 = call i32 @errhint(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.1, i64 0, i64 0))
  %83 = call i32 @ereport(i32 %80, i32 %82)
  %84 = load i64*, i64** %16, align 8
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %24, align 8
  br label %86

86:                                               ; preds = %79, %74
  %87 = load i64, i64* %24, align 8
  %88 = load i64*, i64** %17, align 8
  store i64 %87, i64* %88, align 8
  %89 = call i32 (...) @MultiXactMemberFreezeThreshold()
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @vacuum_multixact_freeze_min_age, align 4
  store i32 %94, i32* %22, align 4
  br label %95

95:                                               ; preds = %93, %86
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %23, align 4
  %98 = sdiv i32 %97, 2
  %99 = call i32 @Min(i32 %96, i32 %98)
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %22, align 4
  %101 = icmp sge i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @Assert(i32 %102)
  %104 = call i64 (...) @GetOldestMultiXactId()
  store i64 %104, i64* %26, align 8
  %105 = load i64, i64* %26, align 8
  %106 = load i32, i32* %22, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  store i64 %108, i64* %27, align 8
  %109 = load i64, i64* %27, align 8
  %110 = load i64, i64* @FirstMultiXactId, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = load i64, i64* @FirstMultiXactId, align 8
  store i64 %113, i64* %27, align 8
  br label %114

114:                                              ; preds = %112, %95
  %115 = call i64 (...) @ReadNextMultiXactId()
  %116 = load i32, i32* %23, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %115, %117
  store i64 %118, i64* %28, align 8
  %119 = load i64, i64* %28, align 8
  %120 = load i64, i64* @FirstMultiXactId, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i64, i64* @FirstMultiXactId, align 8
  store i64 %123, i64* %28, align 8
  br label %124

124:                                              ; preds = %122, %114
  %125 = load i64, i64* %27, align 8
  %126 = load i64, i64* %28, align 8
  %127 = call i64 @MultiXactIdPrecedes(i64 %125, i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %124
  %130 = load i32, i32* @WARNING, align 4
  %131 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %132 = call i32 @errhint(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0))
  %133 = call i32 @ereport(i32 %130, i32 %132)
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %28, align 8
  %136 = call i64 @MultiXactIdPrecedes(i64 %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %129
  %139 = load i64, i64* %26, align 8
  store i64 %139, i64* %27, align 8
  br label %142

140:                                              ; preds = %129
  %141 = load i64, i64* %28, align 8
  store i64 %141, i64* %27, align 8
  br label %142

142:                                              ; preds = %140, %138
  br label %143

143:                                              ; preds = %142, %124
  %144 = load i64, i64* %27, align 8
  %145 = load i64*, i64** %19, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i64*, i64** %18, align 8
  %147 = icmp ne i64* %146, null
  br i1 %147, label %148, label %209

148:                                              ; preds = %143
  %149 = load i64*, i64** %20, align 8
  %150 = icmp ne i64* %149, null
  %151 = zext i1 %150 to i32
  %152 = call i32 @Assert(i32 %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %29, align 4
  %154 = load i32, i32* %29, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @vacuum_freeze_table_age, align 4
  store i32 %157, i32* %29, align 4
  br label %158

158:                                              ; preds = %156, %148
  %159 = load i32, i32* %29, align 4
  %160 = load i32, i32* @autovacuum_freeze_max_age, align 4
  %161 = sitofp i32 %160 to double
  %162 = fmul double %161, 0x3FEE666666666666
  %163 = fptosi double %162 to i32
  %164 = call i32 @Min(i32 %159, i32 %163)
  store i32 %164, i32* %29, align 4
  %165 = load i32, i32* %29, align 4
  %166 = icmp sge i32 %165, 0
  %167 = zext i1 %166 to i32
  %168 = call i32 @Assert(i32 %167)
  %169 = call i64 (...) @ReadNewTransactionId()
  %170 = load i32, i32* %29, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %169, %171
  store i64 %172, i64* %24, align 8
  %173 = load i64, i64* %24, align 8
  %174 = call i32 @TransactionIdIsNormal(i64 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %158
  %177 = load i64, i64* @FirstNormalTransactionId, align 8
  store i64 %177, i64* %24, align 8
  br label %178

178:                                              ; preds = %176, %158
  %179 = load i64, i64* %24, align 8
  %180 = load i64*, i64** %18, align 8
  store i64 %179, i64* %180, align 8
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %29, align 4
  %182 = load i32, i32* %29, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = load i32, i32* @vacuum_multixact_freeze_table_age, align 4
  store i32 %185, i32* %29, align 4
  br label %186

186:                                              ; preds = %184, %178
  %187 = load i32, i32* %29, align 4
  %188 = load i32, i32* %23, align 4
  %189 = sitofp i32 %188 to double
  %190 = fmul double %189, 0x3FEE666666666666
  %191 = fptosi double %190 to i32
  %192 = call i32 @Min(i32 %187, i32 %191)
  store i32 %192, i32* %29, align 4
  %193 = load i32, i32* %29, align 4
  %194 = icmp sge i32 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @Assert(i32 %195)
  %197 = call i64 (...) @ReadNextMultiXactId()
  %198 = load i32, i32* %29, align 4
  %199 = sext i32 %198 to i64
  %200 = sub nsw i64 %197, %199
  store i64 %200, i64* %27, align 8
  %201 = load i64, i64* %27, align 8
  %202 = load i64, i64* @FirstMultiXactId, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %186
  %205 = load i64, i64* @FirstMultiXactId, align 8
  store i64 %205, i64* %27, align 8
  br label %206

206:                                              ; preds = %204, %186
  %207 = load i64, i64* %27, align 8
  %208 = load i64*, i64** %20, align 8
  store i64 %207, i64* %208, align 8
  br label %214

209:                                              ; preds = %143
  %210 = load i64*, i64** %20, align 8
  %211 = icmp eq i64* %210, null
  %212 = zext i1 %211 to i32
  %213 = call i32 @Assert(i32 %212)
  br label %214

214:                                              ; preds = %209, %206
  ret void
}

declare dso_local i64 @TransactionIdLimitedForOldSnapshots(i32, i32) #1

declare dso_local i32 @GetOldestXmin(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdIsNormal(i64) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i64 @ReadNewTransactionId(...) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @MultiXactMemberFreezeThreshold(...) #1

declare dso_local i64 @GetOldestMultiXactId(...) #1

declare dso_local i64 @ReadNextMultiXactId(...) #1

declare dso_local i64 @MultiXactIdPrecedes(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
