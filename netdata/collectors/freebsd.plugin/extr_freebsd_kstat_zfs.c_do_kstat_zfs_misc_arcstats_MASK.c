#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_2__ {int l2exist; int /*<<< orphan*/  memory_throttle_count; int /*<<< orphan*/  l2_asize; int /*<<< orphan*/  l2_size; int /*<<< orphan*/  l2_write_bytes; int /*<<< orphan*/  l2_read_bytes; int /*<<< orphan*/  l2_misses; int /*<<< orphan*/  l2_hits; int /*<<< orphan*/  mfu_size; int /*<<< orphan*/  mru_size; int /*<<< orphan*/  size; int /*<<< orphan*/  c_max; int /*<<< orphan*/  c_min; int /*<<< orphan*/  c; int /*<<< orphan*/  p; int /*<<< orphan*/  hash_chain_max; int /*<<< orphan*/  hash_chains; int /*<<< orphan*/  hash_collisions; int /*<<< orphan*/  hash_elements_max; int /*<<< orphan*/  hash_elements; int /*<<< orphan*/  evict_skip; int /*<<< orphan*/  mutex_miss; int /*<<< orphan*/  deleted; int /*<<< orphan*/  mfu_ghost_hits; int /*<<< orphan*/  mfu_hits; int /*<<< orphan*/  mru_ghost_hits; int /*<<< orphan*/  mru_hits; int /*<<< orphan*/  prefetch_metadata_misses; int /*<<< orphan*/  prefetch_metadata_hits; int /*<<< orphan*/  prefetch_data_misses; int /*<<< orphan*/  prefetch_data_hits; int /*<<< orphan*/  demand_metadata_misses; int /*<<< orphan*/  demand_metadata_hits; int /*<<< orphan*/  demand_data_misses; int /*<<< orphan*/  demand_data_hits; int /*<<< orphan*/  misses; int /*<<< orphan*/  hits; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_BOOLEAN_NO ; 
 int /*<<< orphan*/  FUNC0 (char*,int*,int /*<<< orphan*/ ) ; 
 TYPE_1__ arcstats ; 
 int FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 
 scalar_t__ FUNC4 (int*) ; 
 int FUNC5 (char*,int**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(int update_every, usec_t dt) {
    (void)dt;

    static int show_zero_charts = -1;
    if(FUNC6(show_zero_charts == -1))
        show_zero_charts = FUNC1("plugin:freebsd:zfs_arcstats", "show zero charts", CONFIG_BOOLEAN_NO);

    unsigned long long l2_size;
    size_t uint64_t_size = sizeof(uint64_t);
    static struct mibs {
        int hits[5];
        int misses[5];
        int demand_data_hits[5];
        int demand_data_misses[5];
        int demand_metadata_hits[5];
        int demand_metadata_misses[5];
        int prefetch_data_hits[5];
        int prefetch_data_misses[5];
        int prefetch_metadata_hits[5];
        int prefetch_metadata_misses[5];
        int mru_hits[5];
        int mru_ghost_hits[5];
        int mfu_hits[5];
        int mfu_ghost_hits[5];
        int deleted[5];
        int mutex_miss[5];
        int evict_skip[5];
        // int evict_not_enough[5];
        // int evict_l2_cached[5];
        // int evict_l2_eligible[5];
        // int evict_l2_ineligible[5];
        // int evict_l2_skip[5];
        int hash_elements[5];
        int hash_elements_max[5];
        int hash_collisions[5];
        int hash_chains[5];
        int hash_chain_max[5];
        int p[5];
        int c[5];
        int c_min[5];
        int c_max[5];
        int size[5];
        // int hdr_size[5];
        // int data_size[5];
        // int metadata_size[5];
        // int other_size[5];
        // int anon_size[5];
        // int anon_evictable_data[5];
        // int anon_evictable_metadata[5];
        int mru_size[5];
        // int mru_evictable_data[5];
        // int mru_evictable_metadata[5];
        // int mru_ghost_size[5];
        // int mru_ghost_evictable_data[5];
        // int mru_ghost_evictable_metadata[5];
        int mfu_size[5];
        // int mfu_evictable_data[5];
        // int mfu_evictable_metadata[5];
        // int mfu_ghost_size[5];
        // int mfu_ghost_evictable_data[5];
        // int mfu_ghost_evictable_metadata[5];
        int l2_hits[5];
        int l2_misses[5];
        // int l2_feeds[5];
        // int l2_rw_clash[5];
        int l2_read_bytes[5];
        int l2_write_bytes[5];
        // int l2_writes_sent[5];
        // int l2_writes_done[5];
        // int l2_writes_error[5];
        // int l2_writes_lock_retry[5];
        // int l2_evict_lock_retry[5];
        // int l2_evict_reading[5];
        // int l2_evict_l1cached[5];
        // int l2_free_on_write[5];
        // int l2_cdata_free_on_write[5];
        // int l2_abort_lowmem[5];
        // int l2_cksum_bad[5];
        // int l2_io_error[5];
        int l2_size[5];
        int l2_asize[5];
        // int l2_hdr_size[5];
        // int l2_compress_successes[5];
        // int l2_compress_zeros[5];
        // int l2_compress_failures[5];
        int memory_throttle_count[5];
        // int duplicate_buffers[5];
        // int duplicate_buffers_size[5];
        // int duplicate_reads[5];
        // int memory_direct_count[5];
        // int memory_indirect_count[5];
        // int arc_no_grow[5];
        // int arc_tempreserve[5];
        // int arc_loaned_bytes[5];
        // int arc_prune[5];
        // int arc_meta_used[5];
        // int arc_meta_limit[5];
        // int arc_meta_max[5];
        // int arc_meta_min[5];
        // int arc_need_free[5];
        // int arc_sys_free[5];
    } mibs;

    arcstats.l2exist = -1;

    if(FUNC6(FUNC5("kstat.zfs.misc.arcstats.l2_size", &l2_size, &uint64_t_size, NULL, 0)))
        return 0;

    if(FUNC4(l2_size))
        arcstats.l2exist = 1;
    else
        arcstats.l2exist = 0;

    FUNC0("kstat.zfs.misc.arcstats.hits", mibs.hits, arcstats.hits);
    FUNC0("kstat.zfs.misc.arcstats.misses", mibs.misses, arcstats.misses);
    FUNC0("kstat.zfs.misc.arcstats.demand_data_hits", mibs.demand_data_hits, arcstats.demand_data_hits);
    FUNC0("kstat.zfs.misc.arcstats.demand_data_misses", mibs.demand_data_misses, arcstats.demand_data_misses);
    FUNC0("kstat.zfs.misc.arcstats.demand_metadata_hits", mibs.demand_metadata_hits, arcstats.demand_metadata_hits);
    FUNC0("kstat.zfs.misc.arcstats.demand_metadata_misses", mibs.demand_metadata_misses, arcstats.demand_metadata_misses);
    FUNC0("kstat.zfs.misc.arcstats.prefetch_data_hits", mibs.prefetch_data_hits, arcstats.prefetch_data_hits);
    FUNC0("kstat.zfs.misc.arcstats.prefetch_data_misses", mibs.prefetch_data_misses, arcstats.prefetch_data_misses);
    FUNC0("kstat.zfs.misc.arcstats.prefetch_metadata_hits", mibs.prefetch_metadata_hits, arcstats.prefetch_metadata_hits);
    FUNC0("kstat.zfs.misc.arcstats.prefetch_metadata_misses", mibs.prefetch_metadata_misses, arcstats.prefetch_metadata_misses);
    FUNC0("kstat.zfs.misc.arcstats.mru_hits", mibs.mru_hits, arcstats.mru_hits);
    FUNC0("kstat.zfs.misc.arcstats.mru_ghost_hits", mibs.mru_ghost_hits, arcstats.mru_ghost_hits);
    FUNC0("kstat.zfs.misc.arcstats.mfu_hits", mibs.mfu_hits, arcstats.mfu_hits);
    FUNC0("kstat.zfs.misc.arcstats.mfu_ghost_hits", mibs.mfu_ghost_hits, arcstats.mfu_ghost_hits);
    FUNC0("kstat.zfs.misc.arcstats.deleted", mibs.deleted, arcstats.deleted);
    FUNC0("kstat.zfs.misc.arcstats.mutex_miss", mibs.mutex_miss, arcstats.mutex_miss);
    FUNC0("kstat.zfs.misc.arcstats.evict_skip", mibs.evict_skip, arcstats.evict_skip);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.evict_not_enough", mibs.evict_not_enough, arcstats.evict_not_enough);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.evict_l2_cached", mibs.evict_l2_cached, arcstats.evict_l2_cached);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.evict_l2_eligible", mibs.evict_l2_eligible, arcstats.evict_l2_eligible);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.evict_l2_ineligible", mibs.evict_l2_ineligible, arcstats.evict_l2_ineligible);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.evict_l2_skip", mibs.evict_l2_skip, arcstats.evict_l2_skip);
    FUNC0("kstat.zfs.misc.arcstats.hash_elements", mibs.hash_elements, arcstats.hash_elements);
    FUNC0("kstat.zfs.misc.arcstats.hash_elements_max", mibs.hash_elements_max, arcstats.hash_elements_max);
    FUNC0("kstat.zfs.misc.arcstats.hash_collisions", mibs.hash_collisions, arcstats.hash_collisions);
    FUNC0("kstat.zfs.misc.arcstats.hash_chains", mibs.hash_chains, arcstats.hash_chains);
    FUNC0("kstat.zfs.misc.arcstats.hash_chain_max", mibs.hash_chain_max, arcstats.hash_chain_max);
    FUNC0("kstat.zfs.misc.arcstats.p", mibs.p, arcstats.p);
    FUNC0("kstat.zfs.misc.arcstats.c", mibs.c, arcstats.c);
    FUNC0("kstat.zfs.misc.arcstats.c_min", mibs.c_min, arcstats.c_min);
    FUNC0("kstat.zfs.misc.arcstats.c_max", mibs.c_max, arcstats.c_max);
    FUNC0("kstat.zfs.misc.arcstats.size", mibs.size, arcstats.size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.hdr_size", mibs.hdr_size, arcstats.hdr_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.data_size", mibs.data_size, arcstats.data_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.metadata_size", mibs.metadata_size, arcstats.metadata_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.other_size", mibs.other_size, arcstats.other_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.anon_size", mibs.anon_size, arcstats.anon_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.anon_evictable_data", mibs.anon_evictable_data, arcstats.anon_evictable_data);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.anon_evictable_metadata", mibs.anon_evictable_metadata, arcstats.anon_evictable_metadata);
    FUNC0("kstat.zfs.misc.arcstats.mru_size", mibs.mru_size, arcstats.mru_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_evictable_data", mibs.mru_evictable_data, arcstats.mru_evictable_data);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_evictable_metadata", mibs.mru_evictable_metadata, arcstats.mru_evictable_metadata);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_ghost_size", mibs.mru_ghost_size, arcstats.mru_ghost_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_ghost_evictable_data", mibs.mru_ghost_evictable_data, arcstats.mru_ghost_evictable_data);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mru_ghost_evictable_metadata", mibs.mru_ghost_evictable_metadata, arcstats.mru_ghost_evictable_metadata);
    FUNC0("kstat.zfs.misc.arcstats.mfu_size", mibs.mfu_size, arcstats.mfu_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_evictable_data", mibs.mfu_evictable_data, arcstats.mfu_evictable_data);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_evictable_metadata", mibs.mfu_evictable_metadata, arcstats.mfu_evictable_metadata);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_ghost_size", mibs.mfu_ghost_size, arcstats.mfu_ghost_size);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_ghost_evictable_data", mibs.mfu_ghost_evictable_data, arcstats.mfu_ghost_evictable_data);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.mfu_ghost_evictable_metadata", mibs.mfu_ghost_evictable_metadata, arcstats.mfu_ghost_evictable_metadata);
    FUNC0("kstat.zfs.misc.arcstats.l2_hits", mibs.l2_hits, arcstats.l2_hits);
    FUNC0("kstat.zfs.misc.arcstats.l2_misses", mibs.l2_misses, arcstats.l2_misses);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_feeds", mibs.l2_feeds, arcstats.l2_feeds);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_rw_clash", mibs.l2_rw_clash, arcstats.l2_rw_clash);
    FUNC0("kstat.zfs.misc.arcstats.l2_read_bytes", mibs.l2_read_bytes, arcstats.l2_read_bytes);
    FUNC0("kstat.zfs.misc.arcstats.l2_write_bytes", mibs.l2_write_bytes, arcstats.l2_write_bytes);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_writes_sent", mibs.l2_writes_sent, arcstats.l2_writes_sent);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_writes_done", mibs.l2_writes_done, arcstats.l2_writes_done);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_writes_error", mibs.l2_writes_error, arcstats.l2_writes_error);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_writes_lock_retry", mibs.l2_writes_lock_retry, arcstats.l2_writes_lock_retry);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_evict_lock_retry", mibs.l2_evict_lock_retry, arcstats.l2_evict_lock_retry);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_evict_reading", mibs.l2_evict_reading, arcstats.l2_evict_reading);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_evict_l1cached", mibs.l2_evict_l1cached, arcstats.l2_evict_l1cached);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_free_on_write", mibs.l2_free_on_write, arcstats.l2_free_on_write);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_cdata_free_on_write", mibs.l2_cdata_free_on_write, arcstats.l2_cdata_free_on_write);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_abort_lowmem", mibs.l2_abort_lowmem, arcstats.l2_abort_lowmem);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_cksum_bad", mibs.l2_cksum_bad, arcstats.l2_cksum_bad);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_io_error", mibs.l2_io_error, arcstats.l2_io_error);
    FUNC0("kstat.zfs.misc.arcstats.l2_size", mibs.l2_size, arcstats.l2_size);
    FUNC0("kstat.zfs.misc.arcstats.l2_asize", mibs.l2_asize, arcstats.l2_asize);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_hdr_size", mibs.l2_hdr_size, arcstats.l2_hdr_size);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_compress_successes", mibs.l2_compress_successes, arcstats.l2_compress_successes);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_compress_zeros", mibs.l2_compress_zeros, arcstats.l2_compress_zeros);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.l2_compress_failures", mibs.l2_compress_failures, arcstats.l2_compress_failures);
    FUNC0("kstat.zfs.misc.arcstats.memory_throttle_count", mibs.memory_throttle_count, arcstats.memory_throttle_count);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.duplicate_buffers", mibs.duplicate_buffers, arcstats.duplicate_buffers);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.duplicate_buffers_size", mibs.duplicate_buffers_size, arcstats.duplicate_buffers_size);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.duplicate_reads", mibs.duplicate_reads, arcstats.duplicate_reads);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.memory_direct_count", mibs.memory_direct_count, arcstats.memory_direct_count);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.memory_indirect_count", mibs.memory_indirect_count, arcstats.memory_indirect_count);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_no_grow", mibs.arc_no_grow, arcstats.arc_no_grow);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_tempreserve", mibs.arc_tempreserve, arcstats.arc_tempreserve);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_loaned_bytes", mibs.arc_loaned_bytes, arcstats.arc_loaned_bytes);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_prune", mibs.arc_prune, arcstats.arc_prune);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_meta_used", mibs.arc_meta_used, arcstats.arc_meta_used);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_meta_limit", mibs.arc_meta_limit, arcstats.arc_meta_limit);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_meta_max", mibs.arc_meta_max, arcstats.arc_meta_max);
    // not used: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_meta_min", mibs.arc_meta_min, arcstats.arc_meta_min);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_need_free", mibs.arc_need_free, arcstats.arc_need_free);
    // missing mib: GETSYSCTL_SIMPLE("kstat.zfs.misc.arcstats.arc_sys_free", mibs.arc_sys_free, arcstats.arc_sys_free);

    FUNC3("freebsd", "zfs", show_zero_charts, update_every);
    FUNC2("freebsd", "zfs", show_zero_charts, update_every);

    return 0;
}